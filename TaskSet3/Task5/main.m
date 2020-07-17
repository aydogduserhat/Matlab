% (provide an explanation what this scripts does)
% This scripts is bug free version of original script given as a debugging
% task.
%
% Debugged by: Serhat Aydogdu
%
% Task: 5 / ETS3
%

clear all;

% here we define our integrand
integrand = @(x)reallog( 1 + x ) / x; %% I fixed the definition of the function  it wasnt defined well

% here we sample integrand
n = 1000000; %% I created n variable in order to be changeable and to approach better to integration. it was originally 314.
x = linspace(1e-100, pi, n); %% put variable n instead of 314. also, in domain of fx x=0 was undefined. i put 1e-100 instead in order to be close to 0
h = pi/n; %% put variable n instead of 314
y = zeros(1,n); %% I created new variable of y because in original, y wasnt array. then i appended all f(x) values into y

for i = 1:n 
    y(i) = integrand(x(i)); %% appending f(x) into y
end


% here we integrate
I = integrate(y,h); %% I also made some changes in function

