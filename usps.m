clc;clear;
load USPS
k=[1,10,20,40,80];
labels=labels;
Rate=[];
for i=1:size(k,2)
    Rate=[Rate;CalRate(data,labels,k(i))];
end
plot(k,Rate);