Img = imread('C:\Users\R212-1\Desktop\project3\Fig0338(a).tif');
subplot(3, 1, 1),imshow(Img);
title('ԭʼͼ��');

% ����3*3�ģ��ƽ���ά������˹���ӵĦ���
h = fspecial('laplacian', 0.2);
img1 = imfilter(Img, h);
subplot(3, 2, 3),imshow(img1);
title('Ĭ��');

% �������˲���ģ��
w = [-1, -1, -1; -1, 8, -1; -1, -1, -1];
% replicate�� ͼ���Сͨ��������߽��ֵ����չ
img2 = imfilter(Img, w, 'replicate');
subplot(3, 2, 4),imshow(img2);
title('��ģ');

% ʹ��fspecial����������˹����
img11 = Img + img1;
subplot(3, 2, 5),imshow(img11);
title('fspecial����������˹����');

% ʹ��������˹������չģ��
img21 = Img + img2;
subplot(3, 2, 6),imshow(img21);
title('������˹������չģ��');


