% This script calculates resistance of the resistor by given the data
% experimental.csv
% 
%
% Author: Serhat Aydogdu
% 
% Task: 3/ETS-3

clear all;
% reading data
data = xlsread('experimental.csv');
% selecting columns
x = data(:,1);
y = data(:,2);
% fitting data
[f gof]  = fit(data(:,1),data(:,2),'poly1');
% plotting the data
figure(1);
plot(f,x,y)
title('Experiments in electrical circuit')
xlabel('Voltage in volts')
ylabel('Current in miliamperes')
grid on;
%% Calculating cotangent which is resistance of the resistor
x2 = 1;
x1 = 0.99999999;
y2 = f(x2);
y1 = f(x1);
res = (x2-x1)/(y2-y1);
fprintf('The average estimated resistance is %f ohm \n',res)
%% Estimating confidence interval
disp('Confidence interval linear model with %95 accuracy')
cis = confint(f);
fprintf('%d < p1 < %d \n',cis(1,1),cis(1,2))
fprintf('%d < p2 < %d',cis(2,1),cis(2,2))
