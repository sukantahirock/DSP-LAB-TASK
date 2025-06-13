% Read an image 
originalImage = imread('cameraman.tif'); 
 
% Display the original image 
figure; 
subplot(1, 2, 1); 
imshow(originalImage); 
title('Original Image'); 
 
% Convert the image to double precision for DCT 
originalImage = double(originalImage); 
 
% Perform 2D DCT (Discrete Cosine Transform) 
dctImage = dct2(originalImage); 
 
% Set a compression ratio (e.g., retain top k coefficients) 
compressionRatio = 0.005; % Adjust as needed 
 
% Determine the threshold for coefficient retention 
threshold = compressionRatio * max(dctImage(:)); 
 
% Threshold the DCT coefficients 
compressedDCT = dctImage .* (abs(dctImage) > threshold); 
 
% Perform inverse DCT to reconstruct the compressed image 
compressedImage = uint8(idct2(compressedDCT)); 
imwrite(compressedImage, 'compressed_image.jpg', 'jpg'); 
 
% Display the compressed image 
subplot(1, 2, 2); 
imshow(compressedImage); 
title(['Compressed Image (Compression Ratio: ' num2str(compressionRatio) ')']);