% This scripts solves linear equations created for building Dinas Zauras
% problem
%
% Author: Serhat Aydogdu
% 
% Task: 1/ETS-3

clear all;
% We are going to shop to buy Flamethrowers and Car engines.
% Flamethrowers cost 3000 Eur/piece, can be carried by a single person
% Car engines cost 2500 Eur/piece, can be carried by four people
% We are 12 people including 11 helpers
% Our first goal is to spend as much money as we can.
clear all;
% Our second goal is all the helpers to carry an item.
%
% Here is the equation.
A = [3000 2500; 1 4];
b = [17500.71; 12];
x = inv(A)*b;
x2 = rref([A b]);
fprintf('According to  solution by using Linear Algrebra x = %f y = %f \n', x(1),x(2))
fprintf('According to Gauss Jordan Elimination method x = %f , y = %f \n',x2(1,3),x2(2,3))
% the values are same in 2 different ways.
% x and y values should be an integer
x(1) = round(x(1));
x(2) = round(x(2));

% x = 4 & y = 2 is the solution of this linear equation

%% Lets check x = 4 and y = 2 satifying the equation
s = A*x - b
%
%% 
% they satisfy the second equality which means everybody has something to
% carry
% however, We could not spent all money, we have some remained

% Here is our remaining money.
fprintf('Our remaming money is %.2f euro  ', abs(s(1)))


