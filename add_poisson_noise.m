i = imread('lena.png');
i= im2double(i);
lemda=0.03;
noise=poissrnd(lemda,size(i));
img_with_noise=noise+i;

figure;
subplot(1, 2, 1);
imshow(i);
title('Original Image');
subplot(1, 2, 2);
imshow(img_with_noise);
title('noisy image');
