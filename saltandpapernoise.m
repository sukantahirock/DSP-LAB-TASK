% Read the image
originalImage = imread('lena.png');

% Convert the image to double precision for processing
originalImage = im2double(originalImage);

% Parameters
noiseDensity = 0.3; % Adjust this value to change the amount of noise

% Create salt-and-pepper noise mask
[m, n, ~] = size(originalImage);
noiseMask = rand(m, n);
saltIndices = noiseMask <= noiseDensity / 2;
pepperIndices = noiseMask > (1 - noiseDensity / 2);

% Apply salt-and-pepper noise
noisyImage = originalImage;
noisyImage(saltIndices) = 1; % Set salt pixels to white (1)
noisyImage(pepperIndices) = 0; % Set pepper pixels to black (0)

% Display original and noisy images
figure;
subplot(1, 2, 1);
imshow(originalImage);
title('Original Image');
subplot(1, 2, 2);
imshow(noisyImage);
title('Noisy Image (with salt-and-pepper noise)');
