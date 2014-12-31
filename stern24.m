load data/120414/intensities.csv

i = 1
for i 1:24
  name= genvarname ("z"+i);
  eval ([name = intensites(:,i);)
  %z(i) = intensites(:,i);
endfor

