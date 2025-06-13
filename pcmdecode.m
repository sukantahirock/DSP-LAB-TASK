% Read the quantized image
quantizedImage = imread('quantized_image.png');

% Convert the quantized image to double precision for processing
quantizedImage = double(quantizedImage);

% Number of bits per sample (8-bit PCM)
numBits = 8;

% Maximum value of the sample (assuming 8-bit)
maxValue = 2^numBits - 1;

% Convert the quantized image back to the original range
decodedImage = quantizedImage / maxValue;

% Display the decoded image
subplot(1, 2, 1);
imshow('quantized_image.png');
title('encoded image');

subplot(1, 2, 2);
imshow(decodedImage);
title('Decoded Image');

% Save the decoded image
imwrite(decodedImage, 'decoded_image.jpg');
