clc
clear
%ͼ�񶶶�,��һ��ͼ����ǿ����
%dither�ɶ����Ҷ�ͼ���RGB��ɫͼ��
%���Ҷ�ͼ��ת��Ϊ��ֵͼ�񣬽���ɫͼ�񶶶�Ϊ����ͼ��
%% ��ɫͼ�񶶶�
img_rgb=imread('lena_rgb.jpg');
%��ͼ�񶶶�ʱ,��ɫͼ���ʽdither(img,parula)
%ͬʱ���Ӧͼ����ʾ��ʽimshow(img_Dither,parula)
%�ǲ�ɫͼ��dither(img)
img_Dither=dither(img_rgb,parula);
subplot(1,2,1);
imshow(img_rgb);title('ԭʼͼ��');
subplot(1,2,2);
imshow(img_Dither,parula);title('����ͼ��');
%% ��ɫͼ�󶶶�
figure;
img_gray=imread('lena_gray.jpg');
img_grayDither=dither(img_gray);
subplot(1,2,1);
imshow(img_gray);title('ԭʼͼ��');
subplot(1,2,2);
imshow(img_grayDither);title('��ɫ����ͼ��');












