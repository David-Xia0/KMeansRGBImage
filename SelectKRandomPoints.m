function [Points] = SelectKRandomPoints(pic,k)
%This function generates an array of k randomly selected pixels from an...
%image
%
%Inputs:  1) 3D image array ('pic')
%         2) The number of points to randomly select ('k')
%
%Outputs: 2D array containing k rows and 2
%         columns, representing k randomly selected points ('Points')
%
%Auther: General Kenobi

%finds the dimensions of picture array
dimensions=size(pic);

%multiplcation finds the total number of pixels in the array
pixel=dimensions(1)*dimensions(2);

%randperm generates 'k' number of non-repeating random linear indices
LinP=randperm(pixel,k);

%finds the rows and cols of the individual pixels and stores in 2 ararys
[i,j]=ind2sub(dimensions,LinP);

%adds together rows and cols to form position vectors
Points = [i;j];
Points=permute(Points,[2 1]);%array is transformed to fit specs. size=[k 2]

end
