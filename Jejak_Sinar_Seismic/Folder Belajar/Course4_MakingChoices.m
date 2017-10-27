clc;
clear all;

disp('==================== Trial 1 ====================')
num=30;

if num>100
    disp('greater');
else
    disp('not greater')
end

disp('done')

disp('==================== Trial 2 ====================')

num=30;
disp ('before conditional..');

if num>100
    disp('30 is greater than 100');
else
    disp('.. after conditional')
end

disp('==================== Trial 3 ====================')

num=input('what is the number?');
 
if num > 0
	sign_of_num = 1;
elseif num == 0
	sign_of_num = 0;
else
	sign_of_num = -1;
end

disp(['Sign of num = ', num2str(sign_of_num)]);

disp('==================== Trial 4 ====================')
num=input('what is the next number?');

if ((num > 0) && (num < 50))
    disp('both parts are true');
else
    disp('one part is not true');
end

disp('==================== Trial 5 ====================')
num=input('what is the next next number?');
if (num < 0) || (num < 4)
    disp('at least one part is true');
end

if ''
    disp('empty string is true')
end

if 'foo'
    disp('non empty string is true')
end

if []
    disp ('empty array is true')
end

if [22.5, 1.0]
    disp ('non empty array is true')
end

if [0, 0]
    disp ('array of zeros is true')
end

if true
    disp('true is true')
end
disp('==================== Trial 6 ====================')
pos_total = 0;
neg_total = -6;

for n = input('what is the number of n?')
    if n >= 0
        pos_total = pos_total + n;
    else
        neg_total = neg_total + n;
    end
end

disp(['sum of positive values: ', num2str(pos_total)]);
disp(['sum of negative values: ', num2str(neg_total)]);

disp('==================== Trial 7 ====================')
% plot_switch:
%   0 - show plots interactively
%   1 - save plots to disk
plot_switch = 0;

for idx = 1:3

    % Generate strings for file and image names:
    file_name = sprintf('data/inflammation-%02d.csv', idx);
    img_name = sprintf ('patient_data-%02d.png', idx);

    patient_data = csvread('atritis.csv');
    ave_inflammation = mean(patient_data, 1);

    if plot_switch == 1
        figure('visible', 'off')
    else
        figure('visible', 'on')
    end

    subplot(2, 2, 1);
    plot(ave_inflammation);
    ylabel('average')

    subplot(2, 2, 2);
    plot(max(patient_data, [], 1));
    ylabel('max')

    subplot(2, 2, 3);
    plot(min(patient_data, [], 1));
    ylabel('min')

    if plot_switch == 1
        print('-dpng', img_name);
        close()
    end

end
