Date: 6th June 2025

## Survey of Spectral Unmixing Algorithms by Nirmal Keshava

I started reading this survey to understand spectral unmixing in more detail. I made handwritten notes which I plan to transcribe here when I feel comfortable with the content. The majority of what I read evolved around hierarchial taxonomies of unmixing algorithms described by Keshava. He divides these algorithms into 3 stages and at each stage presrcibes the rules for the hierarchy based on the fundamental assumptions taken by the algorithms. 

The three stages of an unmixing algorithm are:
- Dimensionality Reduction
- Endmember Determination
- Inversion

There is still a lot more to cover and I plan to finish up to page 15 tomorrow. 

## HySUPP

Downloaded the necessary dependencies to run the package in my environment without bugs. After trying to run an example from this package I ran into MLXP errors which I could not and did not have the time to resolve. I figured that this was an academic python package rather than a production grade one and had no maintainers. Looked into the codebase and found out about BayesianSMA model. Will look into its code in depth sometime this week. 

From here I found out about a paper titled, "Solving Spectrum Unmixing as a Multi-Task Bayesian Inverse Problem with Latent Factors for Endmember Variability" by Wu et al, plan to read it tomorrow. Also found a paper titled "Probabilistic Mixture Model-Based Spectral Unmixing" by Hoidn et al.

## Things left to do
- explore the free datasets
