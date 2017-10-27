clc;
clear all;

disp('==================== Looping 1 ====================')
word='great';

%contoh lopping sederhana, jika jumlah kata di word beubah maka hasilnya berpengaruh
for letter=1:5
    disp(word(letter))
end

disp('==================== Looping 2 ====================')
she='beautiful';
N=length(she)-1;
%penulisan lopping yang lebih aman
disp(she(1))
for n=1:N
    letter=1:(n+1);
    disp(she(letter))
end

disp('==================== Looping 3 ====================')

her='amazing';
N=length(her);
for j=N:-1:1
    disp(her(j))
end

disp('==================== Looping 4 ====================')

for idx=1:12
    file_name=sprintf('atritis-%02d.csv',idx);
    disp(file_name);
end

disp('============ Looping 4-Modify .m ==================')

for idx = 1:3

    % Membuat strings untuk nama file and gambar:
    nama_file = sprintf('data/inflammation-%02d.csv', idx);
    disp(nama_file)
    img_name = sprintf ('patient_data-%02d.png', idx);

    Patient_data = csvread('atritis.csv');
    
    disp(['Maximum inflammation: ', num2str(max(Patient_data(:)))]);
    disp(['Minimum inflammation: ', num2str(min(Patient_data(:)))]);
    disp(['Standard deviation: ', num2str(std(Patient_data(:)))]);

    ave_inflammation=mean(Patient_data,1);

    figure('visible', 'off')

    subplot(2, 2, 1);
    plot(ave_inflammation);
    ylabel('average')

    subplot(2, 2, 2);
    plot(max(Patient_data, [], 1));
    ylabel('max')

    subplot(2, 2, 3);
    plot(min(Patient_data, [], 1));
    ylabel('min')

    print('-dpng', img_name);
    close();

end

