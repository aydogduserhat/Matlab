clear all;
%% 1. What is the distribution of Y = (x1+x2+x3+x4)4
avX = zeros(10000,1);
for i=1:10000
    x = randi(6,1,4);
    avX(i) = sum(x)/4;
end
[mu sigma] = normfit(avX);
[f xi] = ksdensity(avX,'Function','pdf');
figure(1)
hold on;
plot(xi, normpdf(xi,mu,sigma),'LineWidth',1.5)
plot(xi,f,'LineWidth',1.5)
hold off;
grid on;
legend('Normal PDF','Empirical PDF')
disp('Y = (x1+x2+x3+x4)/4 is Normally Distributed')
%% What is the distribution of Z = min(x1,x2,x3,x4) ?

minX = zeros(1000,1);
for i=1:10000
    x = randi(6,1,4);
    minX(i) = min(x);
end
figure(2)
histogram(minX,'Normalization','pdf')
grid on;
title('Distribution of Z') 
xlabel('Sides of Dice(X)')
ylabel('P(X)')
disp('The distribution of Z = min(x1,x2,x3,x4) is Discrete Uniform Distribution.')

%% What is the distribution of W = max(x1,x2,x3,x4) ?

maxX = zeros(1000,1);
for i=1:10000
    x = randi(6,1,4);
    maxX(i) = max(x);
end
figure(3)
histogram(maxX,'Normalization','pdf')
title('Distribution of W') 
xlabel('Sides of Dice(X)')
ylabel('P(X)')
grid on;
hold off;
disp('The distribution of W = max(x1,x2,x3,x4) is Discrete Uniform Distribution.')
%% Comparison of W and 7 - Z
figure(4)
hold on;
histogram(maxX,'Normalization','pdf')
histogram(7-minX,'Normalization','pdf')
title('Comparison of W and 7 - Z') 
xlabel('Sides of Dice(X)')
ylabel('P(X)')
grid on;
legend('W' ,'7-Z','Location','NorthWest')
hold off;
