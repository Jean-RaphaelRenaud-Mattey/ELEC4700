function vth = CalculateThermalVelocity(kb,T,mn)
%The function calculate thermal velocity is used to find the thermal
%velocity of an electron
%   To calculate the thermal velocity, we take the square root of the
%   Boltzmann constant multiplied to the Temperature, then divided by the
%   mass of the component, here being the effective mass of the electron
%   mi= mn*0.26 where mn is the mass of an electron.

vth = sqrt((kb*T)/(0.26*mn));

end

