Img = imread('C:\Users\R212-1\Desktop\project3\Fig0335(a).tif');
subplot(1,3,1),imshow(Img);
title('原始图像');
% 均值滤波器
img1 = fspecial('average',[3,3]);  
img1 = imfilter(Img, img1);
subplot(1,3,2),imshow(img1);
title('均值滤波器');
% 中值滤波
img2 = medfilt2(Img);
subplot(1,3,3),imshow(img2);
title('中值滤波器');