% N SAI SUPRABHANU - AP19110010232 - CSE B
% Lab Experiment 9:
% Develop programs to implement frequency domain smoothing filters (Ideal, Butterworth and Gaussian) and apply these filters on a grayscale image. 
% a. Compare/comment on the output of Ideal, Butterworth and Gaussian Low pass Filters having the same radii (cutoff frequency) value.
% b. Consider a suitable gray scale image and demonstrate the ringing effect on the output of Ideal low pass frequency domain filter. 
% c. Compare the output of Butterworth low pass filters (order n=2) for different cutoff frequencies (5, 15, 30, 90, 120). 
% d. Compare the output of Gaussian low pass filters for different cut-off frequencies (5, 15, 30, 90, and 120)

I=imread('DIP_img.jpg');

G=rgb2gray(I);
figure, imshow(G);
title('f(x,y)')
%% Ideal low pass
P=size(G);
M=P(1);N=P(2);
F=fft2(G,M,N);
subplot(332)
imshow(uint8(abs((F))));
title('F(u,v)')
u0=100; %remove freq greater than u0
u=0:(M-1);
v=0:(N-1);
idx=find(u>M/2);
u(idx)=u(idx)-M;
idy=find(v>N/2);
v(idy)=v(idy)-N;
[V,U]=meshgrid(v,u);
D=sqrt(U.^2+V.^2);
H=double(D<=u0);
% display
subplot(333)
imshow(abs(fftshift(H)),[]);
title('H(u,v) ILPF')
subplot(334)
G=H.*F;
g=(ifft2(G));
imshow(uint8(g))
title('ILPF (Ringing problem)')
%% Butterworth low pass
n=1; %Butterworth filter of order n
H= 1./(1 + (D./u0).^(2*n));
subplot(335)
imshow(abs(fftshift(H)));
title('H(u,v) BLPF')
subplot(336)
G=H.*F;
g=(ifft2(G));
imshow(uint8(g))
title('BLPF')
%% Gaussian low pass filter
H = exp(-(D.^2)./(2*(u0^2)));
subplot(337)
imshow(abs(fftshift(H)));
title('H(u,v) GLPF')
subplot(338)
G=H.*F;
g=(ifft2(G));
imshow(uint8(g))
title('GLPF')