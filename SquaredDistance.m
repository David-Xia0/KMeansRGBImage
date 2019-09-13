function [distance] = SquaredDistance(first,second)
%This function calculates the square of the distance between two points
%
%Inputs: 1) point in 3D space. An array with three elements. ('first')
%        2) A second point in 3D space, also with 3 elements. ('second')
%
%Outputs: The square of the distance between the two points in 3D space...
%         single Output('distnace')
%
%Author: General Kenobi

%calculation of distance in point planes
Diff=second-first;

%equation calculates square the distance between the two points
distance=Diff(1)^2+Diff(2)^2+Diff(3)^2;

end


