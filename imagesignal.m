% Load an image
original_image = imread('lena.png');

% Display original image
subplot(2, 2, 1);
imshow(original_image);
title('Original Image');

% Image Sampling
sampling_rate = 2; % Select every nth pixel (adjust as needed)
sampled_image = original_image(1:sampling_rate:end, 1:sampling_rate:end, :);

% Display sampled image
subplot(2, 2, 2);
imshow(sampled_image);
title(sprintf('Sampled Image (Rate: %d)', sampling_rate));

% Image Quantization
quantized_levels = 4; % Number of intensity levels (adjust as needed)
quantized_image = uint8(floor(double(original_image) / (256 / quantized_levels)) * (256 / quantized_levels));

%error
original_size = numel(original_image);
encoded_size = numel(quantized_image);
compression_ratio = original_size / encoded_size;
fprintf('Compression Ratio: %.2f\n', compression_ratio);
% Display quantized image
subplot(2, 2, 3);
imshow(quantized_image);
title(sprintf('Quantized Image (%d Levels)', quantized_levels));
