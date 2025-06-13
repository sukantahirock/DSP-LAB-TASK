% Read an image
img = imread('lena.png');

% Convert the image to grayscale if it's a color image
if size(img, 3) == 3
    img = rgb2gray(img);
end

% Convert the image to double precision
img = double(img);

% Define the wavelet and level of decomposition
wavelet = 'haar'; % You can choose different wavelets like 'db1', 'db2', etc.
level = 3; % Choose the level of decomposition

% Perform the DWT
[C, S] = wavedec2(img, level, wavelet);

% Reconstruct the image from the wavelet coefficients
reconstructed_img = waverec2(C, S, wavelet);

% Display the original and reconstructed images
figure;
subplot(1, 2, 1);
imshow(uint8(img));
title('Original Image');
subplot(1, 2, 2);
imshow(uint8(reconstructed_img));
title('Reconstructed Image');
