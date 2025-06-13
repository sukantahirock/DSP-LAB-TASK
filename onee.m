% Read the input and reference images 
inputImage = imread('lena.png'); 
referenceImage = imread('cameraman.png'); 
 
% Convert images to grayscale if they are not already 
if size(inputImage, 3) == 3 
    inputImage = rgb2gray(inputImage); 
end 
if size(referenceImage, 3) == 3 
    referenceImage = rgb2gray(referenceImage); 
end 
 
% Display the original input and reference images 
figure; 
subplot(2, 3, 1); 
imshow(inputImage); 
title('Input Image'); 
 
subplot(2, 3, 2); 
imshow(referenceImage); 
title('Reference Image'); 
 
% Compute histograms of the input and reference images 
inputHistogram = imhist(inputImage); 
referenceHistogram = imhist(referenceImage); 
 
% Perform histogram specification 
outputImage = histeq(inputImage, referenceHistogram); 
 
% Display the histogram-specified image 
subplot(2, 3, 3); 
imshow(outputImage); 
title('Histogram-Specified Image'); 
 
% Display the histograms of the input, reference, and specified images 
subplot(2, 3, 4); 
bar(inputHistogram); 
title('Input Image Histogram'); 
 
subplot(2, 3, 5); 
bar(referenceHistogram); 
title('Reference Image Histogram'); 
 
subplot(2, 3, 6); 
bar(imhist(outputImage)); 
title('Histogram-Specified Image Histogram');