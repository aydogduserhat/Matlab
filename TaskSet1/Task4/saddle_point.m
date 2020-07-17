M = readmatrix('matrix.txt');
[numofR numofC] = size(M);
index = [];
index2 = [];
index3 = [];
index4 = [];

%posibility 1
[Cmax,  Cind] = min(M);
[Rmax, Rind] = max(M');
for i = 1:numofC
    index(i,:) = [Cind(i), i];
end
for i = 1:numofR
    index2(i,:) = [i, Rind(i)];
end

%posibility 2
[Cmax2,  Cind2] = max(M);
[Rmax2, Rind2] = min(M');

for i = 1:numofC
    index3(i,:) = [Cind2(i), i];
end
for i = 1:numofR
    index4(i,:) = [i, Rind2(i)];
end

points = intersect(index,index2,'rows');
points2 = intersect(index3,index4,'rows');
[numofRow, numofColumn] = size(points);
if isempty(points)==0 | isempty(point2)
    for i = 1:numofRow
        disp('Saddle points of the matrix:')
        disp(points(i,:))
        disp(points2(i,:))
    end
else
        disp('No saddle point found.')
end