clc;
clear;

%============================================== parameter yg diketahui
D=0:10:500; %jarak source dan receiver
h1=10;       %kedalaman layer 1
h2=500;      %kedalaman layer 2

v1=1000;     %kecepatan medium 1
v2=2000;     %kecepatan medium 2
to=0;        %waktu 

%============================================== travel time of direct wave
t1=(D/v1);

%============================================== travel time of reflected wave
t2=sqrt((2*h1/v1).^2)+((D/v1).^2);

%============================================== travel time of refraction wave
t3=((2*h1*sqrt(v2^2-v1^2))/(v1*v2))+(D/v2);

%==============================================
plot(D,t1,'b'); hold on;plot(D,t2,'r');hold on;plot(D,t3,'g')
legend('Direct Wave', 'Reflection Wave', 'Refraction  Wave')
xlabel('Distance of Source to Receiver(m)'); ylabel('Time(s)')




