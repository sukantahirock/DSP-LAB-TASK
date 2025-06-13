I=imread('C:\Users\USER\Documents\MATLAB\lena.png');
imshow(I);
imfinfo("C:\Users\USER\Documents\MATLAB\lena.png")
size(I)

I(2,2)

figure;
subplot(1, 2, 1);
imshow(I);
title('1st');
J=imread('cameraman.tif'); 
subplot(1, 2, 2);
imshow(J);
title('2nd');

figure;
subplot(1, 3, 1);
imshow(I);
title('orginal');
J=imresize(I,[130 100]);
subplot(1, 3, 2);
imshow(J);
title('resized using row and collum');
k=imresize(I,0.75);
subplot(1,3,3);
imshow(k);
title('resized using coefficient');