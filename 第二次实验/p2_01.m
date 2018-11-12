Img = imread('C:\Users\R212-1\Desktop\project2\Fig0308.tif');
figure(1)
subplot(1, 2, 1),imshow(Img);
title('原始图像');
% 对数变换
t1 = log(1+double(Img));
t2 = mat2gray(t1);
img1 = im2uint8(t2);
subplot(1, 2, 2),imshow(img1);
title('对数变换');

figure(2)
subplot(2,1,1),imshow(Img);
title('原始图像');

img_t1 = double(Img);
% 幂变换
cnt = 5;
pow = 0.1;
for pow = 0.1:0.2:0.9
    img_t2 = im2uint8(mat2gray(img_t1.^pow));
    cnt = cnt + 1;
    subplot(2,5, cnt),imshow(img_t2);
    gamma = sprintf('gamma=%.1f', pow);
    title(gamma);
end