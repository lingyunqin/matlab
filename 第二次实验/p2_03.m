Img = imread('C:\Users\R212-1\Desktop\project2\Fig0308.tif');
% ��ת�Ҷ�
Img2 = 255 - Img;
pos=1;
for i=1:4  
    subplot(4,3,pos),imshow(Img);
    title('ͼ��1');
    subplot(4,3,pos+1),imshow(Img2);
    title('ͼ��2'); 
    pos=pos+3;
end

% ͼ�����
img2 = imadd(Img, Img2);
subplot(4,3,3),imshow(img2);
title('add');

% ͼ�����
img3 = imsubtract(Img2, Img);
subplot(4,3,6);
imshow(img3);
title('subtract');

% ͼ�����
img4 = immultiply(Img, Img2);
subplot(4,3,9);
imshow(img4);
title('multiply');

% ͼ�����
img5 = imdivide(Img, Img2);
subplot(4,3,12),imshow(img5);
title('divide');