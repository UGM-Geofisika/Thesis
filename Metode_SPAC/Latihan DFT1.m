clear all
clc
%-----------------------------------------
%IKA MAULITA
N=2048; %punya sinyal dengan panjang 2048
f=20; %tidak boleh lebih besar dari fs (aliasing)
fs=100;
t=0:1/fs:(N-1)/fs
y1=2*sin(2*pi*f*t); %rumus gelombang a sin w t
plot (t,y1);
%----------------------------------------

delta_t=1/fs
%---------------------------DFT
n=(1:1:N)'; %1 ditengah merupakan increment atau beda
m=1:1:N;
mn=n*m; 
W=exp(-i*mn*2*pi/N); %rumus DFT
%===================Misal kita punya sinyal f(x);
y1=y1';
Cn=W*y1; %y harus matriks berdiri (baris)
Xf=(2/N)*abs(Cn);
f=fs/N*m;
plot(f,Xf);

