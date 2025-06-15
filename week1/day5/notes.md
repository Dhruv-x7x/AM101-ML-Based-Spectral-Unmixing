Date: 9th June 2025

## Survey

The taxonomy works across three stages of any spectral unmixing algorithms:
- **Dimensional Reduction**
  - Hyperspectral data cubes are massive. It is computationally very expensive for some algorithms to work on the entire dataset therefore developers may *optionally* reduce the dimensions. The first classification is thus algorithms that reduce dimensions and algorithms that don't. The curse of dimensionality may be a factor in research but abundance maps are only useful if they are precise and reducing dimensions directly leads to a loss of precision.
- **Endmember Determination**
- **Inversion**
  - We generate abundance maps from our endmembers that give us an estimate of the fractional abundances for each pixel.

The below picture is taken from "A survey of A Survey of Spectral Unmixing Algorithms" by Nirmal Keshava.
![image](https://github.com/user-attachments/assets/fbb5d04f-84ff-4674-9a38-8e90d0264002)
