% This program answers the questions in task3 in ETS-2.
% Author: Serhat Aydogdu
% Task: 2
clear all;

%% Plotting the number of red balls after 10 draws.
figure(1)
histogram(DrawBalls(10,1,1),11,'Normalization','pdf')
title('Distribution of Red Balls')
xlabel('Number of Red Balls After 10 Draws(R)')
ylabel('P(R)')
disp('The distribution of the number of red balls after 10 draws is Discrete Uniform Distribution.')
%% Plotting the number of red balls after 100 draws.
figure(2)
histogram(DrawBalls(100,1,1),101,'Normalization','pdf')
title('Distribution of Red Balls')
xlabel('Number of Red Balls After 100 Draws(R)')
ylabel('P(R)')


disp('The distribution of the number of red balls after 100 draws is Discrete Uniform Distribution.')

