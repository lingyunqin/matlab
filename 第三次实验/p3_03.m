Img = imread('C:\Users\R212-1\Desktop\project3\Fig0335(a).tif');
subplot(1,3,1),imshow(Img);
title('ԭʼͼ��');
% ��ֵ�˲���
img1 = fspecial('average',[3,3]);  
img1 = imfilter(Img, img1);
subplot(1,3,2),imshow(img1);
title('��ֵ�˲���');
% ��ֵ�˲�
img2 = medfilt2(Img);
subplot(1,3,3),imshow(img2);
title('��ֵ�˲���');