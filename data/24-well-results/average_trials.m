clear
load n1.csv % loads data in to n1
load n2.csv
load n3.csv

whole = zeros(142,24,3);  % makes 3D matrix to fill

whole(:,:,1) = fliplr(n1);       % fills matrix with data, fliplr flips columns
whole(:,:,2) = n2;
whole(:,:,3) = n3;

mean = mean(whole,3); % takes mean along 3rd dimension

std = std(whole,0,3); % takes std along 3rd dimension

save -ascii mean.csv mean
save -ascii std.csv std