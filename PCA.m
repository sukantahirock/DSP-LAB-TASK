i = imread('lena.png');
b = 4;
w = 251;
img_with_noise = i;

[m, n, ~] = size(i);
x = randi([0, 255], m, n);

img_with_noise(x <= b) = 0;

img_with_noise(x >= w) = 255;
noisy_image = im2double(img_with_noise);

X = reshape(noisy_image, [], size(noisy_image, 3));
X = (X - min(X(:))) / (max(X(:)) - min(X(:)));

% Check if the number of samples is greater than the number of features
if size(X, 1) <= size(X, 2)
    X = X'; % Transpose X if the number of samples is not greater than the number of features
end

[coeff, score, ~, ~, explained] = pca(X);

total_variance = cumsum(explained);
num_components = find(total_variance >= 95, 1);
denoised_image = score(:, 1:num_components) * coeff(:, 1:num_components)';
denoised_image = reshape(denoised_image, [m, n, size(noisy_image, 3)]);


figure;
subplot(1, 2, 1);
imshow(noisy_image);
title('Noisy Image');
subplot(1, 2, 2);
imshow(denoised_image);
title('Denoised Image');
