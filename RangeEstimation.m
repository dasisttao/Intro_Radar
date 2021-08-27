dres = 1;
c = 3*10^8;
rangeMax = 300;

% Find the Bsweep of chirp for a specific resolution
Bsweep = c/(2*dres)

% Calcutate the chirp time based on the Radar's Max Range
Ts = 5.5*rangeMax*2/c)

% define the frequncy shift
fb = [0 1.1e6 13e6 24e6]

% Calculate Range
calculated_range = c*Ts*fb/(2*Bsweep)