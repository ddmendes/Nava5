Is   = 1.95e-6;  % A
miP  = 148.2;    % cm*cm/(V*s)
miN  = 475.8;    % cm*cm/(V*s)
Eox  = 0.35e-12; % F/cm
tOx  = 0.7574e-6;
Cox  = Eox/tOx;
nMin = 1.2;
nMax = 1.6;
Vt   = 26e-3;    % V
X    = 1;
M    = 2;
N    = 1;

R       =   (X*Vt*log(M*N))/Is;
WL1min  =   ( M * Is * 5 ) / ( miN * Cox * X * ( nMin * Vt )^2);
WL2min  =   WL1min;
WL5max  =   Is / ( 20 * miP * Cox * ( nMax * Vt )^2);
WL5min  =   2 * Is / ( miP * Cox * 0.16 );
WL3max  =   WL5max / X;
WL4max  =   2 * WL3max;

format short eng

% Mostra os resultados
R
WL1min
WL2min
WL3max
WL4max
WL5min
WL5max

