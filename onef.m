% Read an image 
originalImage = imread('cameraman.tif'); 
 
% Display the original image 
figure; 
subplot(1, 2, 1); 
imshow(originalImage); 
title('Original Image'); 
 
% Convert the image to grayscale if it is not already 
if size(originalImage, 3) == 3 
    grayImage = rgb2gray(originalImage); 
else 
    grayImage = originalImage; 
end 
 
% Display the grayscale image 
subplot(1, 2, 2); 
imshow(grayImage); 
title('Grayscale Image'); 
 
% Perform contrast enhancement using imadjust 
enhancedImage = imadjust(grayImage); 
 
% Display the enhanced image 
figure; 
subplot(1, 2, 1); 
imshow(enhancedImage); 
title('Contrast Enhanced Image'); 
 
% Display the histograms for the original and enhanced images 
subplot(1, 2, 2); 
imhist(grayImage); 
hold on; 
imhist(enhancedImage); 
hold off; 
title('Histograms: Original and Enhanced Images'); 
legend('Original Image', 'Enhanced Image');