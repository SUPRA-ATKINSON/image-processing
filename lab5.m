% N SAI SUPRABHANU - AP19110010232 - CSE B
% Lab Experiment 5:
% Take a grayscale image and add salt and pepper noise. Write programs for following operations and observe their outputs a. Linear smoothing or Image averaging 
% b. Weighted averaging 
% c. Median filtering. Compare the output quality among Image averaging and median filtering. 
% d. Max filtering 
% e. Min filtering 

I = imread("DIP_img.jpg");

G = rgb2gray(I);

N = imnoise(G,'salt & pepper', 0.2);

% as the filter size increases the salt and pepper noice is 
% being reduced
avg1 = fspecial("average",[3,3]);
avg2 = fspecial("average",[5,5]);
A1 = imfilter(N,avg1);
A2 = imfilter(N,avg2);

figure, imshow(N);
figure, imshow(A1);
figure, imshow(A2);

% wavg = 1/16*[1,2,1;2,4,2;1,2,1];
% 
% B=filter2(wavg,N);

wavg1 = fspecial('gaussian',[3,3]);
wavg2 = fspecial('gaussian',[7,7],1);
B1 = imfilter(N,wavg1);
B2 = imfilter(N,wavg2);
figure, imshow(B1);
figure, imshow(B2);


% in case of med-filter as the window size increases the noise
% gets reduced on a large scale
C1 = medfilt2(N,[3,3]);
C2 = medfilt2(N,[5,5]);

figure, imshow(C1);
figure, imshow(C2);

% min filter makes the image more dark with increase 
% in the filter size 
minf = @(x) min(x(:));
D1 = nlfilter(N,[3 3],minf);  
D2 = nlfilter(N,[5 5],minf); 
figure, imshow(D1);
figure, imshow(D2);


% max filter makes the image more bright with increase 
% in the filter size 
maxf = @(x)max(x(:)); 
E1=nlfilter(N,[3 3],maxf); 
E2=nlfilter(N,[5 5],maxf); 

figure, imshow(E1);
figure, imshow(E2);



% I1 = imread("class.jpg");
% 
% R1 = imfilter(I1, avg1);
% R2 = imfilter(I1, avg2);
% 
% figure, imshow(I1);
% figure, imshow(R1);
% figure, imshow(R2);
