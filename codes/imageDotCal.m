clc
clear
img=imread('lena.bmp');
%% ͼ������Դ���
img_a=img+100;%ÿ��ͼͼ�����ص��100
subplot(2,2,1);imshow(img);title('ԭʼͼ��')
subplot(2,2,2);imshow(img_a);title('���ص�+100������')
img_b=img*1.5;%ÿ��ͼͼ�����ص��Ӧ��1.5�����Աȶ�����
subplot(2,2,3);imshow(img_b);title('���ص�*1.5���ͼ��')
img_c=255-img;%ͼ����
subplot(2,2,4);imshow(img_c);title('ͼ����')
%% ͼ��ķ����Դ���
x_img=1:255;
y_img=x_img+x_img.*(255-x_img)/255
figure;
subplot(1,2,1);plot(x_img,y_img);title('������')
img_d=img+0.005*img.*(255-img);
subplot(1,2,2);imshow(img_d);title('�����Դ����ͼ��')



















