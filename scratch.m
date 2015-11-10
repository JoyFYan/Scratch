clc ;close all;clear;
I=imread('test.jpg');%读取图片
tempmax=0;%找最大值临时变量
pos=0;%此时灰度位置
khist=1.5;%均衡程度系数
J=rgb2gray(I);%灰度化
[m,n]=size(J);

figure(1)
subplot(411)
imshow(J)
title('原始图像')
hth=500;%连通区域高阈值
lth=20;%连通区域低阈值
% [~,pos]=myhistf( J,1.5,600 );
he=imhist(J);%计算直方图

subplot(413)
bar(he)
subplot(412)
J(J>180)=255;
J(J<=180)=0;
imshow(J,[])