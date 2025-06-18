Date: 8th June 2025

## Survey

- **Spectral mixing**: when numerous substances that are distinct jointly contribute to the spectrum measured from a single pixel
- **Spectral unmixing**: to extract, from a mixed pixel spectrum, the constituent materials of its mixture as well as the proportion in which they appear
- **Endmembers**: the collection of constituent spectra that make up the mixed pixel's spectrum
- **Abundance**: the proportion of each endmember present in the mixed pixel

Above are the most important definitions that must be cleared before a thorough analysis of the algorithms. The definitions are paraphrased from the survey itself.

#### Endmembers
Endmembers typically correspond to the macroscopic properties that is relatable to us as objects in the scene such as soil, water, metalor any other natural or man-made substance.

#### Classification Maps
Before spectral unmixing came into play, researchers used classification maps wherein each pixel is assigned a class it most closely resembles. But these maps weren't enough to give us any insight pertaining to the other substances, if any, that might also reside within the boundaries of a particular pixel. 

#### Reasons for Mixed Pixels
There are two big reasons why we see mixed pixels in hyperspectral images:
- **Low Resolution**
  - Due to a tradeoff between the Instantaneous Field-of-View (IFOV) and the signal-to-noise ratio (SNR), hyperspectral sensors have a low spatial resolution. It is low enough that adjacent endmembers may jointly occupy a single pixel.
- **Mixed substances**
  - When the substance itself is mixed homogenously, it becomes difficult to find the abundances of the mixture components. For example, sand on a beach is made up of many types of rocks, the electromagnetic radiation from the sun reflects off of the sand grains and gets scattered. The scattering happens non-linearly and spectral unmixing becomes untractable for this case. If the scattering happens linearly (e.g. a road in between a field of grass) then spectral unmixing can find the endmembers.
 
#### Sun and EM Waves
In hyperspectral sensing, the incident signal is actually the sun. Electromagnetic radiation from the sun gets reflected upward by the natural and man-made substances on the surface of earth and hit the sensor.

![image](https://github.com/user-attachments/assets/3106e89a-2fa6-46d9-850d-81d1ba79d021)

The above image is from Keshava's survey. It illustrates the difference between linear and non-linear spectral mixing due to scattering of sunlight.
