%Sobel边缘检测
%输入参数为图像数据ima，阈值T
%输出参数为Sobel梯度数据A，二值图像数据imbw
function [G,imbw] = Sobeledge(ima,T)
mask = [-1,-2,-1;0,0,0;1,2,1];
Gx = imfilter(ima,mask);
Gy = imfilter(ima,mask');
G = abs(Gx)+abs(Gy);
imbw = zeros(size(ima));
imbw(G>T) = 1;
return;