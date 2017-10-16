clc;clear;
%=========================================input data stasiun
di=[50.193 49.733 50.128 49.88 49.94]; %arrival time (Vp) observasi
x=[790958 789849 791818 788544 790922]; %koordinat bujur (x) stasiun 
y=[9202706 9205397 9204934 9205327 9206554]; %koordinat lintang (y) stasiun 
z=[1866 1761 1877 1619 1933]; %elevasi
v=3170; %model kecepatan Vp yang digunakan    

%========================%standar deviasi
sigma=8;
N=length(di);
Cd=eye(N,N)*sigma.^2; Cdi=inv(Cd); 

% parameter koordinat gempa dan origin time (xo,yo,to,to) tebakan diawal
m=[789457 9205818 -1726 49] ; m=m';

%========================================= rumus inputan

for i=1:10  %Jumlah iterasi
    
R=sqrt((m(1)-x).^2+(m(2)-y).^2+(m(3)-z).^2); %jarak gempa ke stasiun
ti=m(4)+(1/v)*R; %arrival time kalkulasi
delta_dr=di-ti; %residual time

dt_dx=(m(1)-x)./(v*R);dt_dx=dt_dx';
dt_dy=(m(2)-y)./(v*R);dt_dy=dt_dy';
dt_dz=(m(3)-z)./(v*R);dt_dz=dt_dz';
dt_dt=ones(5,1);

G=[dt_dx dt_dy dt_dz dt_dt]; %matriks kernel

%=============================================solusi
delta_m=pinv(G'*Cdi*G)*G'*Cdi*delta_dr'; %solusi delta m

m=m+delta_m  %koordinat baru setelah dikoreksi

disp('m= ');
disp(m);
disp('delta_m= ');
disp(delta_m);
end

