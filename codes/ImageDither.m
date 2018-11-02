clc
clear
%图像抖动,是一种图像增强方法
%dither可抖动灰度图像和RGB彩色图像，
%将灰度图像转换为二值图像，将彩色图像抖动为索引图像
%% 彩色图像抖动
img_rgb=imread('lena_rgb.jpg');
%作图像抖动时,彩色图像格式dither(img,parula)
%同时其对应图像显示格式imshow(img_Dither,parula)
%非彩色图像dither(img)
img_Dither=dither(img_rgb,parula);
subplot(1,2,1);
imshow(img_rgb);title('原始图像');
subplot(1,2,2);
imshow(img_Dither,parula);title('抖动图像');
%% 灰色图象抖动
figure;
img_gray=imread('lena_gray.jpg');
img_grayDither=dither(img_gray);
subplot(1,2,1);
imshow(img_gray);title('原始图象');
subplot(1,2,2);
imshow(img_grayDither);title('灰色抖动图象');












