disp('_R1__R2__R3  ')
disp('___________  ')
disp('  |   |   |  ')
disp('  Z   Z   Z  ')
disp('  Z   Z   Z  ')
disp('  |   |   |  ')
disp('-----------  ')
res1 = input('Please enter the 1st resistance in ohm: ');
res2 = input('Please enter the 2nd resistance in ohm: ');
res3 = input('Please enter the 3rd resistance in ohm: ');
totalres= (res1*res2 + res1*res3 + res2*res3)/res1+res2+res3;
fprintf('Total resistance is %f Ohms', totalres)