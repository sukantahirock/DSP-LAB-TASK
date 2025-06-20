binaryImage = imread('binary.jpg');
figure;
subplot(1, 3, 1);
imshow(binaryImage);
title('Binary');
rgbImageFromBinary = cat(3, binaryImage, binaryImage, binaryImage);
subplot(1, 3, 2);
imshow(rgbImageFromBinary);
title('Binary to RGB');
indexedImageFromBinary = uint8(binaryImage) * 255;
subplot(1, 3, 3);
imshow(indexedImageFromBinary, colormap('gray'));
title('Binary to Indexed');
