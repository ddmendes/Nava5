Is = 1.95e-6;      %A
miP = 1.48e2;        %cm*cm/V
Eox = 3.5e-13;   %F/cm
tOx = 7.754e-9;
Cox = Eox/tOx;
nMin = 1.2;
nMax = 1.6;
X = 1;
Vt = 26e-3;
M = 2;
N = 1;

R       =   (X*Vt*log(M*N))/Is
WL1min  =   ( Is * 5 ) / ( miP * Cox * X * ( nMin * Vt )^2)
WL2min  =   WL1min
WL5max  =   Is / ( 20 * miP * Cox * ( nMax * Vt )^2)
WL5min  =   Is / ( miP * Cox * 0.16 )
WL3max  =   WL5max / X

