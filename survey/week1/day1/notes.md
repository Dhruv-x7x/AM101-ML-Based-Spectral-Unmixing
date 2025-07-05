Date: 5th June 2025

---

## Spectral Unmixing
Xavier and Silvia, in a chapter of Optical Remote Sensing of Land Surface (2016) say that spectral unmixing starts off with an estimation of the number of **endmembers** N that exist in a hyperspectral image. This N is called the virtual dimensionality (VD). They go on to say that, in absence of a priori information of the image we can employ simple supervised techniques. A group of researchers set VD at 7 after finding that over 98% of the hyperspectral image variance in their study was concentrated in the first 7 PCA components. 
They also mention the HYSIME algorithm, an unsupervised method that first estimates the signal-noise correlation matrix and then finds the best representation of the signal space in the least squares sense.

## A Survery of Spectral Unmixing Algorithms 
[Link](https://archive.ll.mit.edu/publications/journal/pdf/vol14_no1/14_1survey.pdf) to the survey by Nirmal Keshava. It also has statistical inference methods that I wanted to look at.

## Datasets
Found a list of datasets to explore [here](https://github.com/antmedellin/HyperspectralDatasets).

## HySUPP Python Package
An open-source package which contains 20 methods of spectral unmixing.

## Additional
- HYSIME Algorithm: Estimating noise-correlation matrix. "Fast and Reliable Noise Estimation for Hyperspectral Subspace Identification" Benner et al.,
