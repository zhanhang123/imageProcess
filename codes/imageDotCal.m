clc
clear
img=imread('lena.bmp');
%% 图像的线性处理
img_a=img+100;%每个图图像像素点加100
subplot(2,2,1);imshow(img);title('原始图像')
subplot(2,2,2);imshow(img_a);title('像素点+100后数据')
img_b=img*1.5;%每个图图像像素点对应乘1.5倍，对比度增加
subplot(2,2,3);imshow(img_b);title('像素点*1.5后的图像')
img_c=255-img;%图像求补
subplot(2,2,4);imshow(img_c);title('图像求补')
%% 图像的非线性处理
x_img=1:255;
y_img=x_img+x_img.*(255-x_img)/255
figure;
subplot(1,2,1);plot(x_img,y_img);title('处理函数')
img_d=img+0.005*img.*(255-img);
subplot(1,2,2);imshow(img_d);title('非线性处理后图像')



















