clc; clear all;
%ANASTASIA KADEK DETY L. ( 09 Oktober 2017)
%MATLAB
%--------------------------PROSEDUR PEMANGGILAN DATA
y=xlsread('MATLABCOBA.xlsx');
N=length(y);
fs=100;
t=0:1/fs:(N-1)/fs;
plot(t,y);
%---------------------------DFT
n=(1:1:N)'; 
m=(1:1:N);
mn=n*m;
W=exp(-i*mn*2*pi/N);
%---------------------------PLOT GRAFIK DFT
y=xlsread('MATLABCOBA.xlsx');
N=length(y);
Cn=W*y; %Cn=X(f)n
Xf=(2/N)*abs(Cn);
f=fs/N*m;
plot(f(1:N/2),Xf(1:N/2));