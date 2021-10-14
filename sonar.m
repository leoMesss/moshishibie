clc;clear;
load sonar
k=1:120;
Rate=[];
for i=1:size(k,2)
    Rate=[Rate;CalRate(X,Y,k(i))];
end
plot(k,Rate);

