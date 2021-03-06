clc;
clear all;
close all;

image = imread('synthetic2.tiff');

image = rgb2gray(image);
img = image;

structel = 255*ones(3,3);

for i=2:1:size(image,1)-1
    for j=2:1:size(image,2)-1
        mat = uint8(image(i-1:1:i+1,j-1:1:j+1));
        if(uint8(mat) ~= uint8(structel))
            image(i,j) = 0;
        end
    end
end

outline = img - image;

figure('Name','Synthetic Original','NumberTitle','off');
imshow(img,'Border','tight');
pause();
figure('Name','Eroded','NumberTitle','off');
imshow(image,'Border','tight');
pause();
figure('Name','Outline','NumberTitle','off');
imshow(outline,'Border','tight');
pause();

close all;