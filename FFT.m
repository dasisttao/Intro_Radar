Fs = 1000;  % Sampling frequency
T = 1/Fs;   % Sampling period
L = 1500;   % Length of signal
t = (0:L-1)*T; % Time vector

% Form a signal containing a 77 Hz sinusoid of amplitude 0.7 and a 43 Hz
% sinusoid of amplitude 2
S = 0.7*cos(2*pi*77*t) + 2*sin(2*pi*43*t);

% Corrupt the signal with noise
X = S + randn(size(t));

% Plot the noisy signal in the time domain. It is difficult to identify the
% frequency components by looking at the signal X(t)
% plot(1000*t(1:50),X(1:50));
% title('Signal Corrputed with Zero-Mean Random Noise');
% xlabel('t (milliseconds)');
% ylabel('X(t)');


% Compute the Foruier transform of the signal
signal_fft = fft(X);    % Output Complex number
signal_fft = abs(signal_fft); % We only care about the magnitude 

% FFT output generates a mirror image of the signal. But we are only
% interested in the positive half of signal length L, since it is the
% replica of negative half and has all the information we need
sginal_fft = signal_fft(1:L/2+1);

% Plotting
f = Fs*(0:(L/2))/L;
plot(f,sginal_fft);
title('Signle-Sided Amplitude Spectrum of X(t)');
xlabel('f (Hz)')
ylabel('signal_fitt(f)')

