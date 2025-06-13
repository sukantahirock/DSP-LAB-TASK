% Read an image
img = imread('lena.png');

% Convert the image to grayscale if it's a color image
if size(img, 3) == 3
    img = rgb2gray(img);
end

% Convert the image to double precision
img = double(img);

% Size of the image
[M, N] = size(img);

% DCT matrix size
P = 8;
Q = 8;

% Compute the DCT coefficients block by block
dct_img = zeros(M, N);

for i = 1:P:M-P+1
    for j = 1:Q:N-Q+1
        block = img(i:i+P-1, j:j+Q-1);
        dct_block = dct2(block);
        dct_img(i:i+P-1, j:j+Q-1) = dct_block;
    end
end

% Display the original and DCT transformed images
figure;
subplot(1,2,1);
imshow(uint8(img));
title('Original Image');
subplot(1,2,2);
imshow(uint8(dct_img));
title('DCT Transformed Image');
