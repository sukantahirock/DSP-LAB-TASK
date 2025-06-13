% Read the input image
inputImage = imread('C:\Users\USER\Documents\MATLAB\lena.png');

% Set the threshold value (you can adjust this based on your image)
threshold = 128;

% Perform point transformation thresholding
outputImage = inputImage;
outputImage(inputImage <= threshold) = 0;  % Set pixels below the threshold to 0
outputImage(inputImage > threshold) = 255;  % Set pixels above the threshold to 255

% Display the original and thresholded images
subplot(1, 2, 1);
imshow(inputImage);
title('Original Image');

subplot(1, 2, 2);
imshow(outputImage);
title('Thresholded Image');
