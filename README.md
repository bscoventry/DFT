# DFT
This is a helper function in Matlab to easily calculate the generalized discrete Fourier transform with the FFT and produces output frequency bands and plots. This is mostly for me so I don't have to recode each time.

To run:
```
[yfft,afft,faxis,taxis] = DFT(dataVector,SampleRate);
```
```
#To plot
figure(1)
plot(faxis,yfft)
```
