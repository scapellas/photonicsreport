clear;

% Finds the two equilibrium points.
L1 = quintic(0);
r = quintic(1);

% Warning time gained thanks to Sub-L1.
v = 400000; % Average solar wind speed.
warning_time_in_minutes = (L1 - r)/(60*v);
