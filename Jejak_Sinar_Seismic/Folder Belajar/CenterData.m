data = csvread('atritis.csv');
centered = center(data(:), 0) %memusatkan data di sekitar 0

disp([min(data(:)), mean(data(:)), max(data(:))])
disp([min(centered(:)), mean(centered(:)), max(centered(:))])