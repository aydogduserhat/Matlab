density = 2.7;
height = input('Height(meter) = ');
width = input('Width(meter) = ');
length = input('Length(meter) = ');
thickness = input('Thickness(meter) = ');
width2 = width - 2 * thickness;
height2 = height - 2 * thickness;
volume = 2 * length * thickness * ...
    ( width + height - 2 * thickness);
weight = volume * density;
fprintf('The weight of the aliminium box is %f kg', weight)