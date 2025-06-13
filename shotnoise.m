i = imread('lena.png');
scale = 0.1;
i=double(i);
noisy_i = poissrnd(i * scale) ./ scale; 
noisy_i(noisy_i < 0) = 0; 
noisy_i(noisy_i > 255) = 255; 
noisy_i = uint8(noisy_i); 
     
figure;
subplot(1, 2, 1); 
imshow(uint8(i)); 
title('Original i'); 
subplot(1, 2, 2); 
imshow(noisy_i); 
title('Noisy i with Shot Noise');
