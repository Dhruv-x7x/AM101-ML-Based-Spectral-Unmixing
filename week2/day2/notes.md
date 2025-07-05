Date: 13th June 2025

### Geometric Endmember Determination

#### Simplex

A simplex is the simplest shape in any dimension:
- In 2D, a triangle (3 corners)
- In 3D, a tetrahedron (4 corners)
- In higher dimensions, a shape with one more corner than the number of dimensions.

This simplex encloses all the datapoints in higher dimensions. 

#### PCA
- A mathematical dimensional reduction technique that keeps most of the important information in the direction of the eigenvectors corresponding to the largest eigenvalues evaluated on the covariance matrix.
- PCA finds the axes where data varies most.

#### Using Geometry to Determine Endmembers
- The idea behind this is that if we plot all the pixel spectra in a multi-dimensional space, the endmembers will be at the "corners" of the shape (simplex) that encloses all the data.
- Hyperspectral data has hundreds of bands, PCA reduces it down to 5-10, keeping only the most important information. The number of significant principal components gives us an upper bound on the number of endmembers.
- In the example below, the data is linearly transformed to a four-dimensional space and then we *shrinkwrap* a simplex around all of the data points in this dimension. The endmembers are found at the 5 vertices of this simplex.
- This simplex is iteratively shrinked (minimum volume transform) until we get a final simplex with the smallest volume that still encloses all the data. Inverse linear transform is applied to give back the endmember spectra.

![image](https://github.com/user-attachments/assets/f1468790-99d8-4d58-a4ab-8b3909389256)

---

Advantages of Geometric Endmember Determination over Statistical:
- Geometric techniques are able to identify low-probability targets.
Disadvantages:
- Geometric techniques use all of the data which can sometimes include *aberrant* pixels (sensor artifacts) that can create spurious results.
