%This program answers the questions in the task2 in ETS-2
% Author : Serhat Aydogdu
% Task: 2

clear all;


%% Estimating
r = normrnd(0,1,300,1);
[f xi] = ksdensity(r);

%% Empirical
x = [-3:0.1:3];
y = normpdf(x,0,1);

%% Plotting
figure(1);
hold on;
plot(x,y,'k') % empirical
plot(xi,f,'r--') % estimated
legend('Empirical', 'Estimated')
hold off;

%% Comparing the results of estimated and empirical...


%% Illustrating how  P(X) depends on Mu

mu = [-6:3:6];


%Plotting

figure(2);
hold on;
title('How P(X) depends on Mu')
xlabel('X')
ylabel('P(X)')
for mu = mu
    q = normrnd(mu,1,300,1);
    [f2, xi2] = ksdensity(q);
    c = [mu-3:0.1:mu+3];
    d = normpdf(c,mu,1);
    plot(c,d,'k-') % empirical
    legends = strcat('Mu =  ', int2str(mu));
    plot(xi2,f2,'--') % estimated
    legend(legends,legends);
    
end
hold off;

% I couldn't put all the mu values onto plot.

%% Illustrating how P(X) depends on sigma

sigma = [1:2:7];

figure(3);
hold on;
title('How P(X) depends on sigma')
xlabel('X')
ylabel('P(X)')
for sigma = sigma
    q = normrnd(0,sigma,300,1);
    [f2, xi2] = ksdensity(q);
    c = [-20:0.1:20];
    d = normpdf(c,0,sigma);
    plot(c,d,'k-','LineWidth',2) % empirical
    legends = strcat('sigma =  ', int2str(sigma));
    plot(xi2,f2,'--o','LineWidth',1) % estimated
    legend(legends,legends);
    
end
hold off;
% I couldn't put all the sigma values onto plot.

%% Mean and standart deviation thing. not completed yet......



