original_image = imread('lena.png');

grayscale_image = rgb2gray(original_image);

% Low-pass filter (Butterworth)
lp_order = 4;
lp_cutoff_frequency = 0.5;
[lp_b, lp_a] = butter(lp_order, lp_cutoff_frequency, 'low');

% Apply low-pass filter
low_pass_filtered_image = filter(lp_b, lp_a, double(grayscale_image) / 255);
low_pass_filtered_image = uint8(low_pass_filtered_image * 255);

% High-pass filter (Butterworth)
hp_order = 4;
hp_cutoff_frequency = 0.03;
[hp_b, hp_a] = butter(hp_order, hp_cutoff_frequency, 'high');

% Apply high-pass filter
high_pass_filtered_image = filter(hp_b, hp_a, double(grayscale_image) / 255);
high_pass_filtered_image = uint8(high_pass_filtered_image * 255);

% Display the original and filtered images
figure;
subplot(2, 2, 1);
imshow(grayscale_image);
title('Original Image');

subplot(2, 2, 2);
imshow(low_pass_filtered_image);
title('Low-pass Filtered Image');

subplot(2, 2, 3);
imshow(high_pass_filtered_image);
title('High-pass Filtered Image');

% Combine high-pass and low-pass to reconstruct the original image
reconstructed_image = low_pass_filtered_image + high_pass_filtered_image;

subplot(2, 2, 4);
imshow(reconstructed_image);
title('Reconstructed Image');