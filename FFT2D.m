% Take a 2D signal matrix
P = peaks(20)
% In the case of Radar signal Processing.  Convert the signal in MXN
% matrix, where M is the size of Range FFT sample and N is the size of
% Doppler FFT sample repmat[signal, [M,N]]
X= repmat(P,[5,10]);
imagesc(X)

% Run the 2D FFT acorss both the dimensions
Y= fft2(X);
% Shift zero-frequency terms to thecenter of the array
Y = fftshift(Y);
% Absolute value
Y = abs(Y);

imagesc(Y);