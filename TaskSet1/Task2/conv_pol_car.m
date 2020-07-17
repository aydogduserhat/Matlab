%This program converts cartesian and polar coordinates to each other
conversion = input('enter 1 for Cartesian to polar \nenter 2 for polar to cartesian:  ');
switch (conversion)
    case 1
        x = input('Enter X-axis: ');
        y = input('Enter Y-axis: ');
        r = sqrt(x^2 + y^2);
        theta = atand(y / x);
        fprintf('( %f , %f ) to ( %f , %f degree )', x,y,r,theta)
    case 2
        r = input('Enter r = ');
        theta = input ('Enter Q(in degree) = ');
        x = cosd(theta) * r ;
        y = sind(theta) * r ;
        fprintf('( %f , %f degree ) to (%f , %f )', r,theta,x,y)
    otherwise
        disp('The entry was not 1 or 2')
end