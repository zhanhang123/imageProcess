clc
clear
%灰色图像与索引图像的转换
%灰度图像与二值图像的转换
%彩色图像与灰度图像的转换
img=imread('lena.bmp');
subplot(2,2,1);
imshow(img);
title('原始灰度图');
%灰色图像与索引图像的转换
[img_gray2in16,map_gray2in16]=gray2ind(img,8);
subplot(2,2,2);imshow(img_gray2in16,map_gray2in16);
title('灰度图转16位索引图');
subplot(2,2,3);
imshow(img);
title('原始灰度图');
[img_gray2in28,map_gray2in28]=gray2ind(img,28);
subplot(2,2,4);imshow(img_gray2in28,map_gray2in28);
title('灰度图转28位索引图');






















