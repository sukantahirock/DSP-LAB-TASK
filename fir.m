% FIR (Finite Impulse Response) 
i = imread('lena.png');
i = im2double(i);
i=imnoise(i,'salt & pepper',0.02);
sigma = 1;

filter_kernel = fspecial('gaussian', [5 5], sigma);
filtered_image = imfilter(i, filter_kernel, 'conv', 'replicate');

figure;
subplot(1, 2, 1);
imshow(i);
title('Original Image');
subplot(1, 2, 2);
imshow(filtered_image);
title('Filtered Image (Gaussian)');
