Img=imread('Fig0507.tif');
subplot(1,3,1),imshow(Img);
title('ԭʼͼ��');
Gaussian=imnoise(Img,'gaussian',0.2);
subplot(1,3,2),imshow(Gaussian);
title('��˹����');
SaltAndPepper=imnoise(Img,'salt & pepper',0.2);
subplot(1,3,3),imshow(SaltAndPepper);
title('��������');

% ��������ƽ��ֵ
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
% ��������
% ԭʼͼ��
mean=s/(m*n);
% �Ӹ�˹������ͼ��
mean1=s1/(m*n);
% ������������ͼ�� 
mean2=s2/(m*n);

