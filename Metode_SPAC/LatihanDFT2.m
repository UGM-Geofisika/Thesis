clear all
clc
%IKA MAULITA
%-----------------------------------------misal dua sinyal
N=2048; %punya sinyal dengan panjang 2048
f1=10;
f2=30 %tidak boleh lebih besar dari fs (aliasing)
fs=100;
t=0:1/fs:(N-1)/fs;
y1=2*sin(2*pi*f1*t); %rumus gelombang a sin w t
y2=2*sin(2*pi*f2*t);
y=y1+y2;
plot (t,y1);
%----------------------------------------

delta_t=1/fs
%---------------------------DFT
n=(1:1:N)'; %1 ditengah merupakan increment atau beda
m=1:1:N;
mn=n*m; 
W=exp(-i*mn*2*pi/N); %rumus DFT
%===================Misal kita punya sinyal f(x);
y=y';
Cn=W*y; %y harus matriks berdiri (baris)
Xf=(2/N)*abs(Cn);
f=fs/N*m;
plot(f(1:N/2),Xf(1:N/2));

