% N SAI SUPRABHANU - AP19110010232 - CSE B
% Lab Experiment 7:
% Write a program to improve contrast of an image using histogram equalization. 
% The prototype of the function is as below: histogram_equalisation(input_Image, no_of_bins); 
% The function should return the enhanced image. Consider two low contrast input images. 
% Study the nature of the output image quality in each case by varying the number of bins

I1 = imread("lc1.jpg");
I2 = imread("lc2.jpg");

G1 = rgb2gray(I1);
G2 = rgb2gray(I2);

H1 = histeq(G1, 32);
H1a = histeq(G1, 128);

H2 = histeq(G2, 32);
H2a = histeq(G2, 128);

% at low bin number the image is having very high contrast and 
% noisy, as we increase the bin number the image gets more contrast but
% the details will not get affected

figure, imhist(G1);
figure, imhist(H1);
figure, imhist(H1a);
figure, imshow(G1);
figure, imshow(H1);
figure, imshow(H1a);
figure, imshow(G2);
figure, imshow(H2);
figure, imshow(H2a);