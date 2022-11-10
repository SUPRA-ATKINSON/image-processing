I = imread("DIP_img.jpg");

G = rgb2gray(I);

A = imcomplement(G);

a = double(G)/255;
c = 2; 


B1 = c*log10(1 + (a));  % as c increases the image gets more bright and at very high values the image just fades away


B2 = (exp(a) .^ (1/c)) - 1; % as c increases the image gets lighter and the gets more detailed


Gamma=[3,4,5];  % as gamma value increases the image gets more darker while losing some details         
C1=c*(a.^Gamma(1));                            
C2=c*(a.^Gamma(2));
C3=c*(a.^Gamma(3));


D = imadjust(G, stretchlim(G, [0.05, 0.95]),[]);


E = double(G)/255;
[m,n]=size(G);
  for i=1:m
      for j=1:n
          if((E(i,j))>50)&&(E(i,j)<150)
              E(i,j)=255;
          else
              E(i,j)=G(i,j); 
          end
      end
  end


figure, imshow(G);

figure, imshow(A);

figure, imshow(B1);
figure, imshow(B2);

figure, imshow(C1);
figure, imshow(C2);
figure, imshow(C3);

figure, imshow(D);

figure, imshow(E);