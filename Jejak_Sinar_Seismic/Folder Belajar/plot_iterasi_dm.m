clc
clear all

a=1:10;a=a'; %jumlah iterasi

%=============================== delta m
dxo=[598.307281783168000
-177.910984969417000
-21.284866467620400
-0.265356970311213
-0.146810822140662
-0.025090821407900
-0.004926912493680
-0.000925105777636
-0.000174888299757
-0.000032980734275];

dyo=[-764.061057187489000
184.422743567252000
37.608091622101100
3.205359091903970
0.304724290474297
0.040488498752666
0.006790971930144
0.001236879559428
0.000231119124692
0.000043481551415];

dzo=[2052.734235451800000
-391.194628474882000
-58.836267170211600
-8.217723739130290
-1.327206755799800
-0.237723480370107
-0.044189724593139
-0.008301528648985
-0.001564130955785
-0.000294937723140];

dto=[0.338375517597000
-0.157342255833100
-0.024323596395994
-0.002251253875398
-0.000339339282035
-0.000060137188920
-0.000011171792716
-0.000002097786642
-0.000000395240666
-0.000000074525917];

%===================================== plot data
plot(a,dxo,'r'); hold on; plot(a,dyo,'g'); hold on; plot(a,dzo,'b'); hold on; plot(a,dto,'k');
legend('delta xo','delta yo','delta zo','delta to')
xlabel('iterasi ke-'); ylabel('delta m')