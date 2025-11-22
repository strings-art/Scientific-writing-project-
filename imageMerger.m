% TWO IMAGES MERGER

img1 = imread('peppers.png');     % Image 1
img2 = imread('saturn.png');      % Image 2

img2 = imresize(img2, [size(img1,1), size(img1,2)]);

A = im2double(img1);
B = im2double(img2);
merged = (A + B) / 2;

figure;

subplot(1,3,1); imshow(img1); title('Image 1');
subplot(1,3,2); imshow(img2); title('Image 2');
subplot(1,3,3); imshow(merged); title('Merged Output');
