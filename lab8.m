% N SAI SUPRABHANU - AP19110010232 - CSE B
% Lab Experiment 8:
% Take a low contrast grayscale image (A) and a high contrast gray scale image (B).
% Write a program to improve the contrast of A with the help of image B using histogram specification or matching. 
% The prototype of the function is as below: Histogram_sp(input_Image, specified_Iage, no_of_bins); 
% The function should return the enhanced image.

I = imread("lc2.jpg");

R = imread("hc1.jpg");

Ig = rgb2gray(I);

Rg = rgb2gray(R);


H = imhistmatch(Ig, Rg, 64);

figure, imshow(Ig);
figure, imshow(H);
figure, imshow(Rg);
