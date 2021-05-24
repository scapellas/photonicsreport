% Finds the two equilibrium points.
rL = quintic(0);
rS = quintic(1);

% Warning time gained thanks to the Sub-L1 orbit.
v = 400000; % Average speed of solar wind in m/s.
warning_time_in_minutes = (rL - rS)/(60*v);
