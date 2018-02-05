clearvars
clearvars -GLOBAL
close all
format shortE

%set(0, 'DefaultFigurewindowsStyle', ' docked')
global C
global Vx Vy Px Py
global nAtoms timestep
global length width
global Q Q1 Q2 Q3
global tmn
C.c = 299792458;                    % speed of light
C.kb = 1.3806504e-23;               % Boltzmann constant
C.m_0 = 9.10938215e-31;             % electron mass
C.T = 300;                          %Temperature for question 1
C.g =9.80665;                       %metres (32.1740 ft) per s²


%initialized all values
timestep = 1000;
nAtoms = getnumbersofatoms();
length = 200;
width = 100;
Vx = 0;
Vy =0;
Px=0;
Py=0;
Q = zeros(nAtoms,4);
Q1 = Q;
Q2 = Q;
Q3 = Q;
tmn = 0.2e-12;





vth = CalculateThermalVelocity(C.kb,C.T,C.m_0);
answer1 = 'the thermal velocity at T = 300K is %6.3f m per s.\n';
fprintf(answer1,vth);
mfp = tmn*vth;
answer2 = 'the mean free path is %1.9f m.\n';
fprintf(answer2,mfp);
%This is the creation of the electron position in the silicon semiconductor
%of nominal size region 200nm*100nm, for problem 1.
for i= 1:nAtoms
    Q(i,1)= randi([0 width],1);%random position for x position
    Q(i,2)= randi([0 length],1);%random position for y position
    Q(i,3)= vth;%initial velocity of x coordinate
    Q(i,4)=vth;%initial velocity of x coordinate
end




%This is the creation of the electron position in the silicon semiconductor
%of nominal size region 200nm*100nm, for problem 2.
for i=1:nAtoms
    Q2(i,1) = randi([0 200],1);%random position for x position
    Q2(i,2) = randi([0 100],1);%random position for y position
    Q2(i,3)= 0;
    Q2(i,4)=0;
end
