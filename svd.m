% Read an image
img = imread('lena.png');

% Convert the image to grayscale if it's a color image
if size(img, 3) == 3
    img = rgb2gray(img);
end

% Convert the image to double precision
img = double(img);

% Perform Singular Value Decomposition (SVD)
[U, S, V] = svd(img);

% Reconstruct the image from the truncated SVD components
k = 100; % Number of singular values to keep
reconstructed_img = U(:,1:k) * S(1:k,1:k) * V(:,1:k)';

% Display the original and reconstructed images
figure;
subplot(1, 2, 1);
imshow(uint8(img));
title('Original Image');
subplot(1, 2, 2);
imshow(uint8(reconstructed_img));
title('Reconstructed Image (k = 100)');
