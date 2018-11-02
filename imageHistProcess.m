clc
clear
%% 图像直方图均衡化，属于图像增强的一种
img=imread('lena.png');
img_histeq=histeq(img);
subplot(3,2,1);imshow(img);title('原始图像');
subplot(3,2,2);imhist(img);title('原始图像直方图');
subplot(3,2,3);imshow(img_histeq);title('直方图均衡化后')
subplot(3,2,4);imhist(img_histeq);title('均衡化后图像直方图')
%% 算法原理
% 1.首先找到每个灰度图像每个灰度值的数量
% 2.计算出每一灰度值所占的概率，求出其累次概率
% 3.将累次概率依次乘上像素值的最大，即灰度图乘以255
[raw,col]=size(img);
len=unique(img);
pinci=zeros(length(len),4);
pinci(:,1)=len;
for i=1:raw
    for j=1:col
        for k=1:length(len)
            if(img(i,j)==pinci(k,1))
                pinci(k,2)=pinci(k,2)+1;
            end
        end
    end
end
sumAll=sum(pinci(:,2));
for i=1:length(len)
    pinci(i,3)=sum(pinci(1:i,2))/sumAll;
    pinci(i,4)=round(pinci(i,3)*255);
end
newImg=zeros(raw,col);
for i=1:raw
   for j=1:col
       newImg(i,j)=pinci(find(img(i,j)==pinci(:,1)),4);
   end
end
subplot(3,2,5);imshow(uint8(newImg));title('非内置函数直方图均衡化图像')
subplot(3,2,6);imhist(uint8(newImg));title('非内置函数直方图')
%% 直方图规定化
hist_ru=1:1:50;
img_hist=histeq(img,hist_ru);
figure;
subplot(2,2,1);imshow(img);title('原始图像');
subplot(2,2,2);imhist(img);title('原始图像直方图');
subplot(2,2,3);imshow(img_hist);title('直方图规定化后')
subplot(2,2,4);imhist(img_hist);title('规定化后图像直方图')







































