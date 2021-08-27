c = 3*10^8;
frequency = 77e9;

% calculate the wavelength
lamda = c/frequency

% Define the doppler shifts 
f_shift = [3e3 4.5e3 11e3 -3e3];

% Cauculate the velocity of the target fd = 2*vr/lamda
vr = f_shift*lamda/2