%--------------------------------------------------------------------------
% Author: Brandon S. Coventry
% Date: 4/25/2016
% Purpose: Does all necessary FFT calculations
% Source: http://matlabgeeks.com/tips-tutorials/how-to-do-a-fourier-transform-in-matlab/
%--------------------------------------------------------------------------
function [yfft,afft,faxis,taxis] = DFT(data,fs)
nsamps = length(data);
taxis = (1/fs)*(1:nsamps);   %Calculate time axis
%Fourierize it!
yfftwhole = fft(data); %Get magnitude and phase
yfft = abs(yfftwhole); %Magnitude
yfft = yfft/max(yfft); %Normalize
afft = angle(yfftwhole); %Phase
yfft = yfft(1:nsamps/2);  %Throw away redundant data
afft = afft(1:nsamps/2);
faxis = fs*(0:nsamps/2-1)/nsamps;