Date: 12th June 2025

### Dimensional Reduction Taxonomy

![image](https://github.com/user-attachments/assets/2a6f46f7-7dcd-462c-9c53-c8d23ef6faa1)

#### Dimension Reduction vs Data Compression
- Goal of data compression is to reconstruct a signal that is approximate to the original signal. While the goal of dimension reduction is to provide a minimal representation using sufficient information for successful unmixing in the lower dimensional space. Both serve a different purpose. We will distinguish algorithms first on the basis of how they perform dimensional reduction.

#### Explanation
- All algorithms discussed here do not presume any probability density function on the data and hence are non-parametric in nature.
- To read the image above, we can take the example of PCA. It is a statistical, non-parametric that optimizes a squared error. "While it does not incorporate noise in its signal model, it uses all the data in the scene and yields orthogonal axes for its coordinate transformation."

### Endmember Determination Taxonomy

![image](https://github.com/user-attachments/assets/0db38b2a-0f94-4b4e-bfc8-c26997699bd1)

#### Explanation
- Taking an example to understand how to read this chart, Gaussian Class Estimation is a statistical and parametric algorithm. So it assumes some sort of probability density function for the data. The optimizing criterion is a maximum-likelihood for gaussian signals. This algorithm does not presume anything about the noise in its signal model and uses all the data available. The endmembers are stochastic rather than deterministic.
