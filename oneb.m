originalImage = imread('cameraman.tif'); 

figure; 
subplot(1, 2, 1); 
imshow(originalImage); 
title('Original Image'); 

if size(originalImage, 3) == 3 
    grayImage = rgb2gray(originalImage); 
else 
    grayImage = originalImage; 
end 

subplot(1, 2, 2); 
imshow(grayImage); 
title('Grayscale Image'); 

minIntensity = min(grayImage(:)); 
maxIntensity = max(grayImage(:)); 

stretchedImage = uint8((double(grayImage) - minIntensity) / (maxIntensity - minIntensity) * 255); 

subplot(1, 3, 3); 
imshow(stretchedImage); 
title('Contrast Stretched Image'); 

sgtitle('Contrast Stretching Transformation');
