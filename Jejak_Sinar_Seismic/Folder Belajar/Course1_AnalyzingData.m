clc;
clear all;

csvread('atritis.csv');                 %memanggil data
Patient_data=csvread('atritis.csv');    %mendefinisikan variabel data pasien
Weight_kg=40;                           %mendefinisikan varibel berat(kg)
Weight_lb=2.2*Weight_kg;                %mendefinisikan varibel berat(lb)
disp(['Weight in kg: ', num2str(Weight_kg)]);
disp(['Weight in pounds: ', num2str(Weight_lb)]);

%======================================= Slicing data atritis
mean(Patient_data(:))                   %rata-rata semua data pasien
help mean;                              %detail mean
disp(['Max inflammation: ', num2str(max(Patient_data(:)))]);
disp(['Min inflammation: ', num2str(min(Patient_data(:)))]);
disp(['Standar deviation: ', num2str(std(Patient_data(:)))]);

max(Patient_data(3,:))                  %maksimal peradangan pasien baris ke-3
mean(Patient_data,1);                   %rata-rata peradangan setiap harinya
mean(Patient_data,2);                   %rata-rata peradangan tiap pasien di semua harinya

%imagesc(Patient_data)                  %display data dalam bentuk warna, merah=tinggi, biru=rendah

ave_inflammation=mean(Patient_data,1);
plot(ave_inflammation)                  %display jumlah rata2 peradangan tiap harinya

plot(max(Patient_data,[],1));           %display jumlah max peradangan tiap harinya
title('Maxium inflammation per day');

plot(min(Patient_data,[],1));           %display jumlah max peradangan tiap harinya
title('Minimum inflammation per day');

%======================================= menggabungkan display 3 kurva
subplot(1,3,1);
plot(ave_inflammation);
ylabel('ave') 

subplot(1,3,2);
plot(max(Patient_data,[],1));
ylabel('max')

subplot(1,3,3);
plot(min(Patient_data,[],1));
ylabel('min')

