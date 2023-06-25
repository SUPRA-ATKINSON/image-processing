# image-processing

***below are the lab experiments corresponding to each file(ex: lab-1, lab-2) respectively*
*written in Matlab***

**Lab Experiment 1:** 
Perform the following operations using library functions 
a. Read, Display, and write any color image in other formats. 
b. Find RED, GREEN and BLUE plane of the color image.
c. Convert color image to grayscale image and binary image
d. Resize the image by one half and one quarter. i.e. Image rotates by 45, 90 and 180 degrees. 


**Lab Experiment 2:**
Create black and white images (A) of size 1024x1024. Which consists of alternative horizontal lines of black and white? Each line is of size 128. Create black and white images (B) of size 1024x1024. Which consists of alternative vertical lines of black and white? Each line is of size128. Perform the following operations on Image A and Image B. 
a. Image addition of A and B 
b. Subtraction of A and B 
c. Multiplying Images of A and B 
d. Create a grayscale image of size 256 x 1024. Intensity of image should vary sinusoidally. 
e. Create a white image of size 256x256, with black box of size 58x58 at centre. 


**Lab Experiment 3:**
Develop programs for following intensity transformation operation on a grayscale image. Collect any gray scale image from any source. Process that image using these operations.
a. Image negative 
b. Log transformation and inverse log transform: s = c log (1+r), c is a const, r ≥ 0. s is pixel intensity of output image, r is the pixel intensity of input image. Study the effect of constant c on the quality of output image. 
c. Power law transformation: Study the effect of different values of Gamma used in this transformation. 
d. Contrast stretching 
e. Gray level slicing


**Lab Experiment 4:**
Develop programs for following spatial filtering operations on a grayscale image. 
a. Averaging: Implement averaging filtering operations for different window sizes and study their effect on the quality of output image. Write your observations on output image quality. 
b. Weighted averaging: Implement weighted averaging filtering operations for different window sizes and study their effect on the quality of output image. Write your observations on output image quality. 
c. Median filtering: Implement weighted averaging filtering operations for different window sizes and study their effect on the quality of output image. Write your observations on output image quality. 
d. Max filtering 
e. Min filtering 


**Lab Experiment 5:**
Take a grayscale image and add salt and pepper noise. Write programs for following operations and observe their outputs 
a. Linear smoothing or Image averaging 
b. Weighted averaging 
c. Median filtering. Compare the output quality among Image averaging and median filtering. 
d. Max filtering 
e. Min filtering  


Lab Experiment 6:
Write programs to perform following sharpening operations on a grayscale image 
a. Laplacian filter 
b. Filtering using composite mask 
c. Unsharp masking 
d. High boost filtering 
e. Filtering using first order derivative operators such as sobel and prewitt mask.


Lab Experiment 7:
Write a program to improve contrast of an image using histogram equalization. The prototype of the function is as below: histogram_equalisation(input_Image, no_of_bins); The function should return the enhanced image. Consider two low contrast input images. Study the nature of the output image quality in each case by varying the number of bins.
Lab Experiment 8:
Take a low contrast grayscale image (A) and a high contrast gray scale image (B). Write a program to improve the contrast of A with the help of image B using histogram specification or matching. The prototype of the function is as below: Histogram_sp(input_Image, specified_Iage, no_of_bins); The function should return the enhanced image.


Lab Experiment 9:
Develop programs to implement frequency domain smoothing filters (Ideal, Butterworth and Gaussian) and apply these filters on a grayscale image. 
a. Compare/comment on the output of Ideal, Butterworth and Gaussian Low pass Filters having the same radii (cutoff frequency) value.
b. Consider a suitable gray scale image and demonstrate the ringing effect on the output of Ideal low pass frequency domain filter. 
c. Compare the output of Butterworth low pass filters (order n=2) for different cutoff frequencies (5, 15, 30, 90, 120). 
d. Compare the output of Gaussian low pass filters for different cut-off frequencies (5, 15, 30, 90, and 120).  


Lab Experiment 10:
Develop programs to implement frequency domain sharpening/High pass filters (Ideal, Butterworth and Gaussian) and apply these filters on a grayscale image. 
a. Compare/comment on the output of Ideal, Butterworth and Gaussian High pass Filters having the same radii (cutoff frequency) value. 
b. Consider a suitable gray scale image and demonstrate the ringing effect on the output of Ideal high pass frequency domain filter. 
c. Compare the output of Butterworth high pass filters (order n=2) for different cut-off frequencies (5, 15, 30, 90, 120). 
d. Compare the output of Gaussian high pass filters for different cut-off frequencies (5, 15, 30, 90, and 120).

