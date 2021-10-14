clc;clear;
load Iris
k=1:120;
Rate=[];
for i=1:size(k,2)
    Rate=[Rate;CalRate(data,labels,k(i))];
end
plot(k,Rate);