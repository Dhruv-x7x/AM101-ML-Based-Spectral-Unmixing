Date: 11th June 2025

### Mixing Models

Describe how constituent material substances in a pixel combine to give the overall spectrum that the sensor measures. Using the knowledge of the mixing models we can perform inverse operation to recover endmember and abundances. 

#### Linear Mixing Model

"The surface area is divided proportionally according to the fractional abundances of the constituent substances, the reflected radiation then conveys the same information."

For example, say we have K spectral bands. And the $i^{th}$ endmember spectrum is $s_i$ with abundance $a_i$. Then we can express the spectrum $x$ as,

$$x = a_1s_1 + a_2s_2 + ... + a_Ms_M + w$$
$$x = \sum_{i=1}^M a_is_i + w = Sa + w$$

where M is the number of endmembers, S is the matrix of endmembers and w is the error term representing additive noise. For N pixels we can write the vectorized formula as $X = SA + W$. Here A is the non-negative abundance matrix whose elements sum to one for physical realizability.

#### Non-Linear Mixing Model

The components in the mixture are "randomly distributed in a homogenous way". The incident ray can experience reflection with multiple substances and "the aggregate spectrum no longer upholds the linear proportion of the constituent substance spectrum."
