img_name = 'general_img.tif'
img = imread(img_name);
figure(1)
imshow(img)
title('原图像1024*1024');

img1 = imresize(img, [256, 256]);
figure(2)
imshow(img1)
title('256*256');

img2 = Bilinear_Interpolation(img1, 4);

figure(3)
imshow(img2)
title('双线性内插法放大后')

[a, b] = size(img);
n = max(a, b);
c = 1024 / n;
img3 = Bilinear_Interpolation(img1, c);
figure(4)
imshow(img3)
title('双线性内插法缩小后')