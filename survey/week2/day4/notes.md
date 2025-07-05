Date: 15th June 2025

## Exploring the Indian Pines Dataset in MATLAB

I spent some time exploring the Indian Pines dataset on MATLAB where I used the Harsanyi–Farrand–Chang method to estimate the number of endmembers and the NFINDR algorithm to extract the endmembers. 

NFINDR uses geometric techniques to extract endmembers that I read about before. It assumes that the simplex formed by the endmembers has the largest volume. It is an iterative algorithm that finds the endmembers which maximize the simplex volume.

I have noted the results here. I plan to implement all of the research papers on my own in python but I thought it would be good to look at the final result, something to benchmark against.

#### Ground Truth

![image](https://github.com/user-attachments/assets/2e7be7dd-1305-4864-8bef-6f13e019b729)

#### The Datacube as RGB Composite Image

![image](https://github.com/user-attachments/assets/3820f6b1-6850-49c8-9a4f-627d76221821)

#### Extracted Endmembers vs Ground Truth

Here are the extracted endmembers shown in a plot of reflectance data values vs bands.

![image](https://github.com/user-attachments/assets/ba51653a-f75e-4c00-a502-84f15eca18b2)

I used Spectral Angle Mapper (degrees) to find the closest class mean to the ground truth.

![image](https://github.com/user-attachments/assets/7f2b4ffa-0e32-4846-9100-a2dda9efaeff)

Above is one of the endmembers that was extracted using NFINDR. The full image is given below,

![image](https://github.com/user-attachments/assets/a7baa287-4723-4229-9984-40c9323c6136)
