% Read the input image
input_image = imread('lena.png');

% Convert the image to grayscale if it's not already
if size(input_image, 3) == 3
    input_image = rgb2gray(input_image);
end

% Convert the image to double precision
input_image = double(input_image);

% Perform Huffman coding
symbols = unique(input_image(:)); % Find unique symbols in the image
counts = hist(input_image(:), symbols); % Count occurren
% ces of each symbol
probabilities = counts / sum(counts); % Calculate probabilities

% Build Huffman dictionary
huff_dict = huffmandict(symbols, probabilities);

% Encode the image
encoded_image = huffmanenco(input_image(:), huff_dict);

% Decode the image
decoded_image = huffmandeco(encoded_image, huff_dict);

% Reshape the decoded image to its original size
decoded_image = reshape(decoded_image, size(input_image));

% Convert the decoded image back to uint8 for visualization
decoded_image = uint8(decoded_image);

% Display original and decoded images
figure;
subplot(1, 2, 1);
imshow(uint8(input_image));
title('Original Image');
subplot(1, 2, 2);
imshow(decoded_image);
title('Decoded Image');

% Calculate compression ratio
original_size = numel(input_image);
encoded_size = numel(encoded_image);
compression_ratio = original_size / encoded_size;
fprintf('Compression Ratio: %.2f\n', compression_ratio);