A=zeros(1024,1024);
A(128:256,1:1024)=255;
A(384:512,1:1024)=255;
A(640:768,1:1024)=255;
A(896:1024,1:1024)=255;
A = padarray(A,[10 10],0,'both');


B=zeros(1024,1024);
B(1:1024,128:256)=255;
B(1:1024,384:512)=255;
B(1:1024,640:768)=255;
B(1:1024,896:1024)=255;
B = padarray(B,[10 10],0,'both');

ADD = imadd(A,B);
SUB = imsubtract(A,B);
MUL = immultiply(A,B);

k = 3. ;  
x = 1:1024 ; 
y = 1:256 ; 
[X,Y] = meshgrid(x,y) ; 
D = 1/2*(1+sin(2*pi/256*k*X)) ; 

E=ones(256,256);
E(104:152,104:152)=0;
E = padarray(E,[10 10],0,'both');


figure, imshow(A);
figure, imshow(B);
figure, imshow(ADD);
figure, imshow(SUB);
figure, imshow(MUL);
figure, imshow(D);
figure,imshow(E);

