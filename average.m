load data/050714/analyzed1.txt
load data/050914/analyzed2.txt
load data/051214/analyzed3.txt

average = [(analyzed1(:,1)+analyzed2(:,1)+analyzed3(:,1))/3,(analyzed1(:,2)+analyzed2(:,2)+analyzed3(:,2))/3,(analyzed1(:,3)+analyzed2(:,3)+analyzed3(:,3))/3,(analyzed1(:,4)+analyzed2(:,4)+analyzed3(:,4))/3,(analyzed1(:,5)+analyzed2(:,5)+analyzed3(:,5))/3,(analyzed1(:,6)+analyzed2(:,6)+analyzed3(:,6))/3]; 

save -ascii data/average.txt average

stdev =  [((analyzed1(:,1)-average(:,1)).**2 + (analyzed2(:,1)-average(:,1)).**2 + (analyzed3(:,1)-average(:,1)).**2)/3,((analyzed1(:,2)-average(:,2)).**2 + (analyzed2(:,2)-average(:,2)).**2 + (analyzed3(:,2)-average(:,2)).**2)/3,((analyzed1(:,3)-average(:,3)).**2 + (analyzed2(:,3)-average(:,3)).**2 + (analyzed3(:,3)-average(:,3)).**2)/3,((analyzed1(:,4)-average(:,4)).**2 + (analyzed2(:,4)-average(:,4)).**2 + (analyzed3(:,4)-average(:,4)).**2)/3,((analyzed1(:,5)-average(:,5)).**2 + (analyzed2(:,5)-average(:,5)).**2 + (analyzed3(:,5)-average(:,5)).**2)/3,((analyzed1(:,6)-average(:,6)).**2 + (analyzed2(:,6)-average(:,6)).**2 + (analyzed3(:,6)-average(:,6)).**2)/3]
