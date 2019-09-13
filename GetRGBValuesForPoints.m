function [seedMeans] = GetRGBValuesForPoints(pic,points)
%This function selects RGB values from an array according to list of...
%given points.
%
%Inputs: 1) 3D image array to fetch RGB values from ('pic').
%        2) 2D array of k rows and 2 columns, containing pixel...
%           co-ordinates ('points').
%
%Outputs: 3D array, containing k rows, 1 column and 3 layers, containing...
%         RGB values for a given set of points ('seedMeans').
%
%Author: General Kenobi

%finds dimensions for points so we can do for loop
dimensions=size(points);

%preloads 'seedMeans' array
seedMeans=zeros(dimensions(1),1,3);

%nested for loops finds the colours of the k-means in the picture array
for rows=1:dimensions(1)
    for layers=1:3
        
        %the pixel colours are stored in seedMeans array
        seedMeans(rows,1,layers)=pic(points(rows,1),points(rows,2),layers);
    end
end

end
