Date: 27th June 2025

## Probabilistic Mixture Model-Based Spectral Unmixing

This is a survey into a paper by Hoidn et al. The paper takes a bayesian inference approach to unmixing problems in contrast to the geometric algorithms that are popular (e.g. N-FINDR). 
Bayesian approach explicitly "acknowledges and incorporates epistemic uncertainties" and "aleatoric uncertainties" meaning that along with extracting endmembers and abundances, the model also quantifies the uncertainties in these estimations. The paper boasts of the model's confidence to make informed decisions under uncertainty.

#### Epistemic Uncertainty

- Uncertainty arising from the lack of knowledge about a system or model. This uncertainty can be removed if we learn more about the system or have a better model
- E.g. uncertainty in the number of endmembers to be extracted

#### Aleatoric Uncertainty

- This arises from the inherent randomness within the data or the process itself. It is unpredictable and can not be reduced even if we have perfect knowledge.
- E.g. sensor noise

TL:DR of the paper is as follows:
- A bayesian mixture model for spectral unmixing is proposed.
- Treat the unknowns (noise, endmembers, abundances) as probability distributions. The models has priors on all unknowns including the mixing process itself.
- Instead of just estimating the unknowns, the model also provides confidence intervals for each parameter.
- Working:
  - Mixture Model: Each observation is a weighted combination of endmembers plus noise.
  - Noise: Modeled as multivariate gaussian.
  - Inference: Monte Carlo or Variational Inference to estimate the distribution of unknowns.
- The model is robust to challenging conditions in unmixing such as noisy data, lack of pure samples, etc., Although it still can not unmix homogenous mixtures as that is near impossible.

### Mixing Model

### Bayesian Formulation

### Simplex Formulation

###
