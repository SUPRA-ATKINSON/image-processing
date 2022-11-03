I = imread("DIP_img.jpg");

G = rgb2gray(I);

A = imcomplement(G);

c=input('Enter the constant value, c = ');
[M,N]=size(G);
        for x = 1:M
            for y = 1:N
                m=double(G(x,y));
                z(x,y)=c.*log10(1+m); 
            end
        end
imshow(I), figure, imshow(z);

