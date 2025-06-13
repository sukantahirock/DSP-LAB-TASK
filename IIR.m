i = imread('lena.png');
i = im2double(i);
i = imnoise(i, 'salt & pepper', 0.02);

b = [0.25, 0.5, 0.25];
a = [1, -0.5];

filtered_image = zeros(size(i));
for channel = 1:size(i, 3)
    filtered_image(:,:,channel) = filter(b, a, i(:,:,channel));
end

filtered_image = uint8(filtered_image * 255);
figure;
subplot(1, 2, 1);
imshow(i);
title('Noisy Image');
subplot(1, 2, 2);
imshow(filtered_image);
title('Filtered Image (IIR)');
