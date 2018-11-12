Img = imread('C:\Users\R212-1\Desktop\project2\Fig0308.tif');
% 反转灰度
Img2 = 255 - Img;
pos=1;
for i=1:4  
    subplot(4,3,pos),imshow(Img);
    title('图像1');
    subplot(4,3,pos+1),imshow(Img2);
    title('图像2'); 
    pos=pos+3;
end

% 图像相加
img2 = imadd(Img, Img2);
subplot(4,3,3),imshow(img2);
title('add');

% 图像相减
img3 = imsubtract(Img2, Img);
subplot(4,3,6);
imshow(img3);
title('subtract');

% 图像相乘
img4 = immultiply(Img, Img2);
subplot(4,3,9);
imshow(img4);
title('multiply');

% 图像相除
img5 = imdivide(Img, Img2);
subplot(4,3,12),imshow(img5);
title('divide');