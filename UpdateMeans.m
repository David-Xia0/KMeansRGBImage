function [means] = UpdateMeans(pic,k,cluster)
%This function calculates the mean value for each cluster.
%
%Inputs: 1) 3D RGB image array m row, n columns and 3 layers ('pic').
%        2) k, representing how many clusters there are ('k').
%        3) 2D array with m rows and n columns, with cluster allocation...
%           for each pixel. ('cluster').
%
%Output: 3D array, k rows, 1 column and 3 layers, containing RGB values ...
%        for each k-means ('means').
%
%Author: General Kenobi

%Dimensions of cluster array are found for use in calculations and point...
%selection.
c=size(cluster);

%means array is preloaded with zeros.
means=zeros(k,1,3);

%nested for loops cycle between number of k-means and each RGB layer.
for i=1:k
    %sets variables as zero at the beginning of every loop.
    position=0;
    
    %finds the linear index position of cluster points
    position=find(cluster==i);

    for layer=1:3
        %sets variable as zero at the beginning of every layer loop.
        colour=0;
        
        %equation finds the linear index of points in diff layers
        LayerP=c(1)*c(2)*(layer-1)+position;
        
        %using linear indices, finds the colours from image array.
        colour=pic(LayerP);
        
        % calculates the mean RGB values for each 'k'
        means(i,1,layer)=mean(colour);
    end
end

end
