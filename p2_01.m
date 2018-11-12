image = imread('Fig0221(a)(ctskull-256).tif');
% 灰度级顺次降低
img1 = reduceGrayLevel(image, 128);
img2 = reduceGrayLevel(image, 64);
img3 = reduceGrayLevel(image, 32);
img4 = reduceGrayLevel(image, 16);
img5 = reduceGrayLevel(image, 8);
img6 = reduceGrayLevel(image, 4);
img7 = reduceGrayLevel(image, 2);
% 图像输出
figure(1)
subplot(2, 4, 1), imshow(image),title('原图像')
subplot(2, 4, 2), imshow(img1),title('128级灰度')
subplot(2, 4, 3), imshow(img2),title('64级灰度')
subplot(2, 4, 4), imshow(img3),title('32级灰度')
subplot(2, 4, 5), imshow(img4),title('16级灰度')
subplot(2, 4, 6), imshow(img5),title('8级灰度')
subplot(2, 4, 7), imshow(img6),title('4级灰度')
subplot(2, 4, 8), imshow(img7),title('2级灰度')
