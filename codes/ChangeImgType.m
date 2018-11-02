clc
clear
%% 图片数据格式转换
img=imread('lena.bmp');
%将uint8类型数据转为double类型
figure;
imshow(img)
img_double=im2double(img);
figure;
imshow(img_double);
%将uint8类型数据转为uint16类型
img_uint16=im2uint16(img);
figure;
imshow(img_uint16);
%将double类型数据转为uint16类型
im_db2ui16=im2uint16(img_double);
figure;
imshow(im_db2ui16);
%% 图片类型格式的转换
%imwrite(图片数据,'更改后的图片名.图片类型')
imwrite(img,'changeLenaType.jpg')

















