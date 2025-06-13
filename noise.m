i = imread('lena.png');
i = im2double(i);
b = 4;
w = 251;
[m, n] = size(i);
x = randi([0, 255], m, n);

img_with_noise = i;
img_with_noise(x <= b) = 0;
img_with_noise(x >= w) = 1;
imshow(img_with_noise);
