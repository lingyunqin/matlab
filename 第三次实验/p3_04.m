Img = imread('C:\Users\R212-1\Desktop\project3\Fig0338(a).tif');
subplot(3, 1, 1),imshow(Img);
title('原始图像');

% 生成3*3的，逼近二维拉普拉斯算子的π形
h = fspecial('laplacian', 0.2);
img1 = imfilter(Img, h);
subplot(3, 2, 3),imshow(img1);
title('默认');

% 八邻域滤波器模板
w = [-1, -1, -1; -1, 8, -1; -1, -1, -1];
% replicate： 图像大小通过复制外边界的值来扩展
img2 = imfilter(Img, w, 'replicate');
subplot(3, 2, 4),imshow(img2);
title('掩模');

% 使用fspecial生成拉普拉斯算子
img11 = Img + img1;
subplot(3, 2, 5),imshow(img11);
title('fspecial生成拉普拉斯算子');

% 使用拉普拉斯运算扩展模板
img21 = Img + img2;
subplot(3, 2, 6),imshow(img21);
title('拉普拉斯运算扩展模板');


