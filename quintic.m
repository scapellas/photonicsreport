function [r] = quintic(orbit)

    % Universal constants
    c = 299.79e6;
    G = 6.674e-11;
    
    % Sun
    L = 3.8e26;
    Ms = 1.989e30;
    
    % Earth
    Me = 5.972e24;
    R = 1.496e11;
    T = 365.256*24*3600;
    omega = 2*pi/T;
    
    % Solar sail data
    A = 1672;
    m = 90;

    if orbit == 0 % L1 orbit
        Meff = Ms;
    else % Sub-L1 orbit
        Meff = Ms - L*A/(2*pi*c*G*m);
    end
    
    alfa = G*m*Meff;
    beta = G*m*Me;
    gamma = m*omega^2;
    
    a5 = gamma;
    a4 = -2*R*gamma;
    a3 = R^2*gamma;
    a2 = beta - alfa;
    a1 = 2*R*alfa;
    a0 = -alfa*R^2;
    
    sols = roots([a5, a4, a3, a2, a1, a0]);
    r = sols(5);
    
end
