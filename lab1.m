I = imread("DIP_img.jpg");
figure, imshow(I);

r = size(I, 1);
c = size(I, 2);
  
R = zeros(r, c, 3);
G = zeros(r, c, 3);
B = zeros(r, c, 3);
  
R(:, :, 1) = I(:, :, 1);
G(:, :, 2) = I(:, :, 2);
B(:, :, 3) = I(:, :, 3);
  
figure, imshow(uint8(R));
figure, imshow(uint8(G));
figure, imshow(uint8(B));

G = rgb2gray(I);

BW = imbinarize(G);

figure, imshowpair(G, BW, 'montage');

OneHalf = imresize(I,1.5);
OneQuat = imresize(I,0.75);

R1 = imrotate(I,45);
R2 = imrotate(I,90);
R3 = imrotate(I,180);

figure, imshow(R1);
figure, imshow(R2);
figure, imshow(R3);