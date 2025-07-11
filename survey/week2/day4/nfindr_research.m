clc; clear; close all;

% replace with path to data and ground truth
pine_path = "C:\Users\Dhruv\OneDrive\Documents\Repositories\AM101\datasets\indian_pines\Indian_pines.mat";
pine_gt_path = "C:\Users\Dhruv\OneDrive\Documents\Repositories\AM101\datasets\indian_pines\Indian_pines_gt.mat";

% load the data
dataset = load(pine_path);
ground_truth = load(pine_gt_path);

% parse into the datacube and ground truth label
datacube = dataset.indian_pines_corrected;
gt_label = ground_truth.indian_pines_gt;

% display size of the image
disp(size(datacube));

% use any 3 bands to create a RGB composite.
% mat2gray converts a matrix to a grayscale image
bandR = 1; bandG = 2; bandB = 3;
rgbImage = cat(3, ...
    mat2gray(datacube(:,:,bandR)), ...
    mat2gray(datacube(:,:,bandG)), ...
    mat2gray(datacube(:,:,bandB)));

% view the image
% figure;
% imshow(rgbImage);
% title('Indian Pines RGB Composite');

% our .mat file didn't have wavelength info so we are estimating it based
% on equal band gaps and number of bands which is 220.
mask = gt_label > 0;
[rows, cols, bands] = size(datacube);
numPixels = rows * cols;
data2D = reshape(datacube, numPixels, bands);
wavelength = linspace(400, 2500, bands);
hcube = hypercube(datacube, wavelength);
% view hcube
rgbImg = colorize(hcube, 'Method', 'rgb');
imshow(rgbImg);
title('Indian Pines RGB Composite');

% view the ground truth 
figure;
imagesc(gt_label);
axis image off;
colormap(jet(16));
colorbar;
title('Indian Pines Ground Truth Classes');

% use the Harsanyi–Farrand–Chang method to estimate number of endmembers
numEndmembers = 16;
% disp(['Estimated number of endmembers: ', num2str(numEndmembers)]);

% use nfindr to find endmembers
endmembers = nfindr(hcube, numEndmembers);

% view endmembers
figure;
plot(endmembers);
xlabel('Band Number');
ylabel('Reflectance (or Data Value)');
title(['Extracted Endmember Spectra (N-FINDR), Number of Endmembers = ', num2str(numEndmembers)]);
legend('show');

% find the mean spectrum for each class of the ground truth
classMeans = zeros(bands, numEndmembers);
for c = 1:numEndmembers
    classMask = gt_label(:) == c;
    if any(classMask)
        classMeans(:, c) = mean(data2D(classMask, :)', 2);
    end
end

% compute metrics
SAM = zeros(numEndmembers, numEndmembers);
RMSE = zeros(numEndmembers, numEndmembers);

for i = 1:numEndmembers
    for j = 1:numEndmembers
        % SAM
        v1 = endmembers(:, i);
        v2 = classMeans(:, j);
        SAM(i, j) = acos(dot(v1, v2) / (norm(v1) * norm(v2))) * (180/pi);

        % RMSE
        RMSE(i, j) = sqrt(mean((v1 - v2).^2));
    end
end

% smaller SAM is better. Good values are <5
[~, bestSAM] = min(SAM, [], 2);
[~, bestRMSE] = min(RMSE, [], 2);

% view the extracted endmembers vs closest class means of ground truth
figure;
for i = 1:numEndmembers
    subplot(4, 4, i);
    plot(wavelength, endmembers(:, i), 'r', 'LineWidth', 1.2); hold on;
    plot(wavelength, classMeans(:, bestSAM(i)), 'b--', 'LineWidth', 1.2);
    title(['Endmember ', num2str(i)]);
    xlabel('Wavelength (nm)');
    ylabel('Reflectance');
    legend('N-FINDR', 'Best Class Mean');
end
sgtitle('N-FINDR Endmembers vs. Closest Class Means (SAM)');