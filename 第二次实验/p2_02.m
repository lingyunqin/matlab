Img = imread('C:\Users\R212-1\Desktop\project2\Fig0308.tif');
subplot(2,2,1),imshow(Img);
title('原始图像');
subplot(2,2,2),imhist(Img);

img1 = histeq(Img,256);
subplot(2,2,3),imshow(img1);
title('增强后的图像');
subplot(2,2,4),imhist(img1);