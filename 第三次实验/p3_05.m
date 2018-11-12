img = imread('C:\Users\R212-1\Desktop\project3\Fig0340(a).tif');
figure(1);
subplot(2,2,1),imshow(img);
title('原始图像');

% 生成3*3的，逼近二维拉普拉斯算子的π形
cnt = 1;
for alpha = [0.1 0.5 0.9]
    h = fspecial('laplacian', alpha); 
    img_temp =imfilter(img, h);
    img_out = img + img_temp;
    cnt = cnt + 1;
    subplot(2,2,cnt),imshow(img_out);
    title(['\alpha = ', num2str(alpha)]);
end