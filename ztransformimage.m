% Load an image
original_image = imread('lena1.jpg');

% Convert image to double precision for calculations
original_image = double(original_image);

% Compute mean and standard deviation of the image
mean_val = mean(original_image(:));
std_dev = std(original_image(:));

% Apply Z-transformation
z_transformed_image = (original_image - mean_val) / std_dev;

% Scale the image back to uint8 range for display
z_transformed_image = uint8(255 * mat2gray(z_transformed_image));

% Display original and transformed images
subplot(1, 2, 1);
imshow('lena1.jpg');
title('Original Image');

subplot(1, 2, 2);
imshow(z_transformed_image, []);
title('Z-transformed Image');
