clc
clear
%%
%imshow,image,imagesc的详细区别可看下列博客
%https://blog.csdn.net/yuanhuiling/article/details/79511403
%%
img=imread('lena.bmp');%读取图片
figure;%生成一个画布
imshow(img);%显示图片
%image函数，直接把矩阵中的数当做索引值（直接映射）
%将像素值直接映射到[0，63]的数值区间
figure;
image(img);
%imagesc采用的不是直接映射而是线性映射
%将其像素值映射到[0，63]，超过63的被认为是63
figure;
imagesc(img)
%imagesc(img,[0,63])效果等同与
figure;
imagesc(img,[0,63]);
[raw,col]=size(img);%获取图片的大小
%查看图片的其它信息
whos img;
%保存图片
imwrite(img,'lena.png');
figure
%imshow(img,[])是将A的最大值（max(img)）和
%最小值（min(img)）分别作为纯白(255)和纯黑(0)，
%中间的像素值相应地映射为0到255之间的标准灰度值，
%这样就可以正常显示了
imshow(img,[]);



























