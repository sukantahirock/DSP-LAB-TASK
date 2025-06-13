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
 
% Perform histogram equalization 
equalizedImage = histeq(grayImage); 
 
% Display the equalized image 
figure; 
subplot(1, 2, 1); 
imshow(equalizedImage); 
title('Histogram Equalized Image'); 
 
% Display the histograms for the original and equalized images 
subplot(1, 2, 2); 
imhist(grayImage); 
hold on; 
imhist(equalizedImage); 
hold off; 
title('Histograms: Original and Equalized Images'); 
legend('Original Image', 'Equalized Image');