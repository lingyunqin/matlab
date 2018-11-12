Img=imread('Fig0507.tif');
subplot(1,3,1),imshow(Img);
title('原始图像');
Gaussian=imnoise(Img,'gaussian',0.2);
subplot(1,3,2),imshow(Gaussian);
title('高斯噪声');
SaltAndPepper=imnoise(Img,'salt & pepper',0.2);
subplot(1,3,3),imshow(SaltAndPepper);
title('脉冲噪声');

% 计算噪声平均值
Img=double(Img);
Gaussian=double(Gaussian);
SaltAndPepper=double(SaltAndPepper);
[m,n]=size(Img);
s=0;
s1=0;
s2=0;
for i=1:m
    for j=1:n
        s=Img(i,j)+s;
        s1=Gaussian(i,j)+s1;
        s2=SaltAndPepper(i,j)+s2;
    end
end
% 加噪结果：
% 原始图像
mean=s/(m*n);
% 加高斯噪声的图像
mean1=s1/(m*n);
% 加脉冲噪声的图像 
mean2=s2/(m*n);

