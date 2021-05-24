% Finds the two equilibrium points.
rL = quintic(0);
rS = quintic(1);

% Warning time gained thanks to Sub-L1.
v = 400000; % Average solar wind speed.
warning_time_in_minutes = (rL - rS)/(60*v);
