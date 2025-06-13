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
 
% Perform logarithmic transformation 
c = 1; % Constant factor for controlling the transformation 
logTransformedImage = c * log(1 + double(grayImage)); 
 
% Scale the transformed image to the range [0, 255] 
logTransformedImage = uint8((255 / log(256)) * logTransformedImage); 
 
% Display the transformed image 
figure; 
subplot(1, 2, 1); 
imshow(logTransformedImage); 
title('Logarithmic Transformed Image'); 
 
% Display the histograms for the original and transformed images 
subplot(1, 2, 2); 
imhist(grayImage); 
hold on; 
imhist(logTransformedImage); 
hold off; 
title('Histograms: Original and Transformed Images'); 
legend('Original Image', 'Transformed Image');