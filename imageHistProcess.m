clc
clear
%% ͼ��ֱ��ͼ���⻯������ͼ����ǿ��һ��
img=imread('lena.png');
img_histeq=histeq(img);
subplot(3,2,1);imshow(img);title('ԭʼͼ��');
subplot(3,2,2);imhist(img);title('ԭʼͼ��ֱ��ͼ');
subplot(3,2,3);imshow(img_histeq);title('ֱ��ͼ���⻯��')
subplot(3,2,4);imhist(img_histeq);title('���⻯��ͼ��ֱ��ͼ')
%% �㷨ԭ��
% 1.�����ҵ�ÿ���Ҷ�ͼ��ÿ���Ҷ�ֵ������
% 2.�����ÿһ�Ҷ�ֵ��ռ�ĸ��ʣ�������۴θ���
% 3.���۴θ������γ�������ֵ����󣬼��Ҷ�ͼ����255
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
subplot(3,2,5);imshow(uint8(newImg));title('�����ú���ֱ��ͼ���⻯ͼ��')
subplot(3,2,6);imhist(uint8(newImg));title('�����ú���ֱ��ͼ')
%% ֱ��ͼ�涨��
hist_ru=1:1:50;
img_hist=histeq(img,hist_ru);
figure;
subplot(2,2,1);imshow(img);title('ԭʼͼ��');
subplot(2,2,2);imhist(img);title('ԭʼͼ��ֱ��ͼ');
subplot(2,2,3);imshow(img_hist);title('ֱ��ͼ�涨����')
subplot(2,2,4);imhist(img_hist);title('�涨����ͼ��ֱ��ͼ')







































