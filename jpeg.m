% Read an image 
originalImage = imread('cameraman.tif'); 
 
% Display the original image 
figure; 
subplot(1, 2, 1); 
imshow(originalImage); 
title('Original Image'); 
 
% Specify the compression quality (0 to 100) 
compressionQuality = 5; 
 
% Convert the image to double for compatibility 
originalImage = double(originalImage) / 255; 
 
% Save the image in JPEG format 
imwrite(originalImage, 'compressed_image.jpg', 'Quality', compressionQuality); 
 
% Read the compressed image 
compressedImage = imread('compressed_image.jpg'); 
 
% Display the compressed image 
subplot(1, 2, 2); 
imshow(compressedImage); 
title('Compressed Image');