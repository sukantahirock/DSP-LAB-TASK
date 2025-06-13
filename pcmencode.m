% Read the grayscale image
originalImage = imread('lena.png');

% Convert the image to double precision for processing
originalImage = double(originalImage);

% Normalize the image to the range [0, 1]
originalImage = originalImage / 255;

% Number of bits per sample (8-bit PCM)
numBits = 8;

% Maximum value of the sample (assuming 8-bit)
maxValue = 2^numBits - 1;

% Quantize the image
quantizedImage = round(originalImage * maxValue);

% Convert the quantized image back to the original range
quantizedImage = quantizedImage / maxValue;

% Display the original and quantized images
subplot(1, 2, 1);
imshow(originalImage);
title('Original Image');

subplot(1, 2, 2);
imshow(quantizedImage);
title('Quantized Image');

% Save the quantized image
imwrite(quantizedImage, 'quantized_image.png');
