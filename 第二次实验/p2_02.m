Img = imread('C:\Users\R212-1\Desktop\project2\Fig0308.tif');
subplot(2,2,1),imshow(Img);
title('ԭʼͼ��');
subplot(2,2,2),imhist(Img);

img1 = histeq(Img,256);
subplot(2,2,3),imshow(img1);
title('��ǿ���ͼ��');
subplot(2,2,4),imhist(img1);