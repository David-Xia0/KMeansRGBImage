function [Image] = CreateKColourImage(clusters,means)
%This Function creates a k-colour image using an array with each pixel...
%assigned a cluster and each cluster representing a clour value.
%
%Inputs: 1) 2D array with m rows, n columns, each pixel allocated a
%           cluster value.
%        2) 3D array containing k rows, 1 column and 3 layers, where...
%           each row contains the mean colour value for a allocated ...
%           cluster value.
%
%Output: 3D RGB image array of unsigned 8 bit integers with m rows, n...
%        columns and 3 layers.
%
%Author: General Kenobi

%size of inut varialbes are found and used for nested looping
c=size(clusters);
m=size(means);

%preloaded array image. same size as clusters array. is 'uint8'.
Image=zeros(c(1),c(2),3,'uint8');

%nested for looping cycles through each pixel and checks its k value
for i=1:c(1)%rows
    for j=1:c(2)%columns
        for k=1:m(1)%mean values
            if clusters(i,j)==k
                
                %if the k value is = to one being checked a colour is..
                %assigned to that pixel
                Image(i,j,:)=round(means(k,1,:));
                
            end
        end
    end
end

end
