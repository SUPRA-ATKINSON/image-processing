% N SAI SUPRABHANU - AP19110010232 - CSE B
% Lab Experiment 6:
% Write programs to perform following sharpening operations on a grayscale image 
% a. Laplacian filter 
% b. Filtering using composite mask 
% c. Unsharp masking 
% d. High boost filtering 
% e. Filtering using first order derivative operators such as sobel and prewitt mask.

I = imread("DIP_img.jpg");

G = rgb2gray(I);
figure, imshow(G);


% sigma for details and alpha for contrast
A = locallapfilt(G, 0.5, 0.5);
figure, imshow(A);


% B = ;
% 
% figure, imshow(B);


% unsharp masking
C = imsharpen(G);
figure, imshow(C);

% high boost
lk = [-1, -1, -1; -1, 8, -1; -1, -1, -1];
df = [0, 0, 0; 0, 1, 0; 0, 0, 0];
sf = 1; 
krnl = lk + sf * df;
krnl = krnl / sum(krnl(:));

D = imfilter(G, krnl);
figure, imshow(D);

% first order derivatives
sobel = fspecial('sobel');
prewitt = fspecial('prewitt');
E1 = imfilter(G,sobel);
E2 = imfilter(G,prewitt);

figure, imshow(E1);
figure, imshow(E2);







