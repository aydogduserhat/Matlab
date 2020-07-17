function numberofredballs = DrawBalls(ntimes,red,black)
prob = red/( red + black );
numberofredballs = zeros(ntimes,1);
for i = 1:100000
    red = 5;
    black = 5 ;
    for ntimes = 1:ntimes
        draw = rand(1);
        if draw < prob
            red = red + 1;
        else
            black = black + 1;
        end
        prob = red / (red + black);
    end
    numberofredballs(i) = red;
end
end


