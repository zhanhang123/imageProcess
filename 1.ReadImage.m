clc
clear
%%
%imshow,image,imagesc����ϸ����ɿ����в���
%https://blog.csdn.net/yuanhuiling/article/details/79511403
%%
img=imread('lena.bmp');%��ȡͼƬ
figure;%����һ������
imshow(img);%��ʾͼƬ
%image������ֱ�ӰѾ����е�����������ֵ��ֱ��ӳ�䣩
%������ֱֵ��ӳ�䵽[0��63]����ֵ����
figure;
image(img);
%imagesc���õĲ���ֱ��ӳ���������ӳ��
%��������ֵӳ�䵽[0��63]������63�ı���Ϊ��63
figure;
imagesc(img)
%imagesc(img,[0,63])Ч����ͬ��
figure;
imagesc(img,[0,63]);
[raw,col]=size(img);%��ȡͼƬ�Ĵ�С
%�鿴ͼƬ��������Ϣ
whos img;
%����ͼƬ
imwrite(img,'lena.png');
figure
%imshow(img,[])�ǽ�A�����ֵ��max(img)����
%��Сֵ��min(img)���ֱ���Ϊ����(255)�ʹ���(0)��
%�м������ֵ��Ӧ��ӳ��Ϊ0��255֮��ı�׼�Ҷ�ֵ��
%�����Ϳ���������ʾ��
imshow(img,[]);



























