rgbImage = imread('lena.png');
binaryImage = im2bw(rgbImage);

figure;
subplot(1, 3, 1);
imshow(rgbImage);
title('RGB');
subplot(1, 3, 2);
imshow(binaryImage);
title('RGB to Binary');
indexedImage = rgb2ind(rgbImage, 256);
subplot(1, 3, 3);
imshow(indexedImage, colormap('gray'));
title('RGB to Indexed');


