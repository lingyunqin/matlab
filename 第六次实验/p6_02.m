%���ƽ������ֵ���ı�Ե���
WH = 2; 
WL = 3;
ima = imread('Fig0235(c)(kidney_original).tif');
subplot(WH,WL,1); 
imshow(ima); 
title('ԭͼ��');

T = 80;
[G1,imbw1] = Sobeledge(ima,T);
subplot(WH,WL,2); 
imshow(uint8(G1)); 
title('Sobel�ݶ�ͼ');
subplot(WH,WL,3); 
imshow(imbw1); 
title('��ֵͼ��');
H = [1,2,1;2,4,2;1,2,1]/16;
imb = imfilter(ima,H);
subplot(WH,WL,4); 
imshow(imb); 
title('ƽ�������ͼ��');
[G2,imbw2] = Sobeledge(imb,T);
subplot(WH,WL,5); 
imshow(uint8(G2)); 
title('ƽ�������Sobel�ݶ�ͼ');
subplot(WH,WL,6); 
imshow(imbw2); 
title('ƽ��������ֵͼ��');