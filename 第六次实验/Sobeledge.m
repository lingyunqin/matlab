%Sobel��Ե���
%�������Ϊͼ������ima����ֵT
%�������ΪSobel�ݶ�����A����ֵͼ������imbw
function [G,imbw] = Sobeledge(ima,T)
mask = [-1,-2,-1;0,0,0;1,2,1];
Gx = imfilter(ima,mask);
Gy = imfilter(ima,mask');
G = abs(Gx)+abs(Gy);
imbw = zeros(size(ima));
imbw(G>T) = 1;
return;