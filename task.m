I=imread('C:\Users\USER\Documents\MATLAB\cameraman.png');
figure;
subplot(1, 2, 1);
imshow(I);
title('original');
k=imresize(I,[1);
subplot(1,2,2);
imshow(k);
title('resized using coefficient');