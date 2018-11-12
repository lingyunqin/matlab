%结合平滑与阈值化的边缘检测
WH = 2; 
WL = 3;
ima = imread('Fig0235(c)(kidney_original).tif');
subplot(WH,WL,1); 
imshow(ima); 
title('原图像');

T = 80;
[G1,imbw1] = Sobeledge(ima,T);
subplot(WH,WL,2); 
imshow(uint8(G1)); 
title('Sobel梯度图');
subplot(WH,WL,3); 
imshow(imbw1); 
title('二值图像');
H = [1,2,1;2,4,2;1,2,1]/16;
imb = imfilter(ima,H);
subplot(WH,WL,4); 
imshow(imb); 
title('平滑处理后图像');
[G2,imbw2] = Sobeledge(imb,T);
subplot(WH,WL,5); 
imshow(uint8(G2)); 
title('平滑处理后Sobel梯度图');
subplot(WH,WL,6); 
imshow(imbw2); 
title('平滑处理后二值图像');