Date: 14th June 2025

## Algorithms I will implement this week and next week

- Dobigeon, N., et al. "Bayesian Linear Unmixing of Hyperspectral Images." IEEE Transactions on Signal Processing, 2009.
- Parra, L., et al. "Unmixing Hyperspectral Data." NeurIPS, 1999
- Sparse Fully Constrained Least Squares
- to be added

## Dataset

### HYDICE

Hyperspectral Digital Imagery Collection Experiment (HYDICE) dataset is a benchmark hyperspectral dataset. It is widely used for spectral unmixing. It was acquired in Michigan, USA, using the HYDICE sensor.

#### Characteristics of HYDICE
- *Spatial Resolution*: around 2m/px
- *Spectral Range*: There are 210 bands but only 175 are used after removing low SNR bands and water-absorption bands.
- *Image Size*: 80x100
- *Features*: Urban and vegetations both. There's trees, roads, vehicles, etc., making it a well-rounded dataset.

The ground truth map with vehicles marked across 10 locations is provided as well. A initial exploration of the image and ground truth map is done in `../week1/day7/hydice_research.ipynb`

The ground truth did not have the endmember classes so I discarded the use of this dataset for now.

### Synthetic Dataset

@misc{zhao2019laboratorycreateddatasetgroundtruthhyperspectral,
      title={A laboratory-created dataset with ground-truth for hyperspectral unmixing evaluation}, 
      author={Min Zhao and Jie Chen and Zhe He},
      year={2019},
      eprint={1902.08347},
      archivePrefix={arXiv},
      primaryClass={cs.CV},
      url={https://arxiv.org/abs/1902.08347}, 
}

- 256 wavelength bands ranging from 400nm to 1000nm

### Indian Pines

Taken at Indiana, USA. This dataset has images of 145 × 145 pixels, 224 spectral bands (of which 200 are used). There are 16 land cover classes. 

Collected by: M Graña, MA Veganzons, B Ayerdi and available [here](https://www.ehu.eus/ccwintco/index.php/Hyperspectral_Remote_Sensing_Scenes).

### Salinas

Collected by 224-band AVIRIS sensor over Salinas Valley, California. 

Spatial Resolution: 3.7m/px
Classes: 16
Bands: 204

## Metrics

- RMSE
- Signal Reconstruction Error

$$SRE = 10log_{10}(\frac{E[||x||_2^2]}{E[||x - \bar x||_2^2]})$$
- Spectral Angle Mapper (SAM)
- PSNR
- Accuracy/Precision for classification tasks
