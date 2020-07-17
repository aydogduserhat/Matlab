function I = integrate(y,h)
    fx0 = y(1:3:end); % f(x_0)
    fx1 = y(2:3:end); % f(x_1)
    fx2 = y(3:3:end); % f(x_2)
    fx3 = y(4:3:end); % f(x_3)
    I = (3*h/8)*((sum(fx0)+sum(fx1*3)+sum(fx2*3)+sum(fx3))); % there was some missing values in the series.
    % I multiplyed fx1 and fx2 by 3. Also once i created variable y to get
    % each y at each x points, i had to calculate every y's sum to approach
    % integration
end