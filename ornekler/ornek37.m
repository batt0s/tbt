clc
clear

%fonk_adi = @(gp) fonk_tanimi

kare = @(x) x.^2;

%%
a = 1;
b = 2;
c = 3;
f = @(x) a*x^2 + b*x + c;

%% 

f2 = @(x,y,z) [(exp(2*x+1)-sin(y))/(2*sqrt(z)+log(z)),rand(1,1)];




%%
sil = @() clc;
