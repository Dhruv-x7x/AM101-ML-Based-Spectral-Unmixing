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

#### Criteria to Categorize Unmixing Algorithms
- Interpretation of Data
- Description of Randomness
- Optimization Criterion

Keshava describes these criteria in the following way:

![image](https://github.com/user-attachments/assets/63518f23-b8d3-4038-ba4b-10e7ce850909)

---

#### Interpretation of Data
 
Under this criterion we can discriminate the algorithms into statistical and non-statistical. In statistical algorithms, we "quantitatively introduce the aggregate behaviour of the larger population into the processing of a single pixel without knowing anything about the probabilistic nature of the data". An example could be bilinear interpolation where the average of the neighborhood of a pixel is used as its value.

