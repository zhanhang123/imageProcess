clc
clear
%��ɫͼ��������ͼ���ת��
%�Ҷ�ͼ�����ֵͼ���ת��
%��ɫͼ����Ҷ�ͼ���ת��
img=imread('lena.bmp');
subplot(2,2,1);
imshow(img);
title('ԭʼ�Ҷ�ͼ');
%��ɫͼ��������ͼ���ת��
[img_gray2in16,map_gray2in16]=gray2ind(img,8);
subplot(2,2,2);imshow(img_gray2in16,map_gray2in16);
title('�Ҷ�ͼת16λ����ͼ');
subplot(2,2,3);
imshow(img);
title('ԭʼ�Ҷ�ͼ');
[img_gray2in28,map_gray2in28]=gray2ind(img,28);
subplot(2,2,4);imshow(img_gray2in28,map_gray2in28);
title('�Ҷ�ͼת28λ����ͼ');






















