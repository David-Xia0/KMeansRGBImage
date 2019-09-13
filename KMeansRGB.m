function [cluster,seedMeans] = KMeansRGB(pic,seedMeans,maxiterations)
%This function places points into assigned k clusters using k-means...
%algorithm.
%
%Inputs: 1) 3D RGB image array with m rows, m columns and 3 layers ('pic').
%        2) 3D array containing k rows, 1 column and 3 layers, used to...
%           start the k-means algorithm.
%        3) The max number of iterations to perform.
%
%Outputs: 1) 2D array with m rows and n columns, where each pixel is...
%            allocated to a cluster.
%         2) 3D array containing k rows, 1 column, 3 layers,containing...
%            mean colour values for each cluster.
%
%Author: General Kenobi

%size of seedMeans is found
k=size(seedMeans);

%preloads variable to start while loop
i=0;

%while loop checks if max iterations has been reached
while i~=maxiterations
    %each loop adds one iteration
    i=i+1;
    
    % 'OldMeans' is stored here so we can check later
    OldMeans=seedMeans;
    
    %AssignToCluster function assigns cluster value to each pixel in pic.
    cluster=AssignToClusters(pic,seedMeans);
    
    %UpdateMeans creates new means from mean RGB values of our clusters.
    seedMeans=UpdateMeans(pic,k(1),cluster);
    
    %if, checks to see if OldMeans==seedMeans(new generated)
    if OldMeans==seedMeans
        %if statement is correct while loop breaks and finishs
        break;
        
    elseif i==maxiterations %if MaxI reached disp warning message
        disp('WARNING:')
        disp('Maximum number of iterations was reached before convergence')
    end
end

end
