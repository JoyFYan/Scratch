clc ;close all;clear;
I=imread('test.jpg');%��ȡͼƬ
tempmax=0;%�����ֵ��ʱ����
pos=0;%��ʱ�Ҷ�λ��
khist=1.5;%����̶�ϵ��
J=rgb2gray(I);%�ҶȻ�
[m,n]=size(J);

figure(1)
subplot(411)
imshow(J)
title('ԭʼͼ��')
hth=500;%��ͨ�������ֵ
lth=20;%��ͨ�������ֵ
% [~,pos]=myhistf( J,1.5,600 );
he=imhist(J);%����ֱ��ͼ

subplot(413)
bar(he)
subplot(412)
J(J>180)=255;
J(J<=180)=0;
imshow(J,[])