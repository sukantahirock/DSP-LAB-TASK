% Read an image
img = imread('lena.png');

% Convert the image to grayscale if it's a color image
if size(img, 3) == 3
    img = rgb2gray(img);
end

% Convert the image to double precision
img = double(img);

% Perform the Fast Fourier Transform (FFT)
fft_img = fft2(img);

% Shift zero frequency component to the center
fft_img = fftshift(fft_img);

% Compute the magnitude spectrum (optional)
magnitude_spectrum = abs(fft_img);

% Display the original image and its FFT
figure;
subplot(1, 2, 1);
imshow(uint8(img));
title('Original Image');
subplot(1, 2, 2);
imshow(log(1 + magnitude_spectrum), []);
title('Magnitude Spectrum (log scale)');
