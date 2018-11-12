% 读取图像
img = imread('Fig0526(a)(original_DIP).tif');
img = im2double(img);
figure;
subplot(2,3,1);
imshow(img);
title('原始图像');

% 模糊图像
PSF = fspecial('motion', 30, 45);
img1 = imfilter(img, PSF, 'conv', 'circular');
subplot(2,3,2);
imshow(img1);
title('模糊图像');

% 添加高斯噪声
noise_var = 0.001;
img2 = imnoise(img1, 'gaussian', 0, noise_var);
subplot(2,3,3);
imshow(img2);
title('添加高斯噪声');

% 参数维纳滤波，NSR直接给0
img3 = deconvwnr(img2, PSF, 0.0);
subplot(2,2,3);
imshow(img3);
title('使用维纳滤波器，NSR=0');

% 参数维纳滤波，计算方差
% img = double(img);
estimated_NSR = noise_var / var(img(:));
img4 = deconvwnr(img2, PSF, estimated_NSR);
subplot(2,2,4);
imshow(img4);
title('使用维纳滤波器，NSR为方差');