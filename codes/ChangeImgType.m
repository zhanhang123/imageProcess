clc
clear
%% ͼƬ���ݸ�ʽת��
img=imread('lena.bmp');
%��uint8��������תΪdouble����
figure;
imshow(img)
img_double=im2double(img);
figure;
imshow(img_double);
%��uint8��������תΪuint16����
img_uint16=im2uint16(img);
figure;
imshow(img_uint16);
%��double��������תΪuint16����
im_db2ui16=im2uint16(img_double);
figure;
imshow(im_db2ui16);
%% ͼƬ���͸�ʽ��ת��
%imwrite(ͼƬ����,'���ĺ��ͼƬ��.ͼƬ����')
imwrite(img,'changeLenaType.jpg')

















