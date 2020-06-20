close all;
clc;
A=imread('C:\Users\ANIKET KUMAR\Desktop\Image Processing\mammogram3.jpeg');
%A=imread('C:\Users\ANIKET KUMAR\Desktop\Image Processing\mammogram4.jpeg');
% A = imread('C:\Users\ANIKET KUMAR\Desktop\Image Processing\tire.jpeg');
%A = imread('C:\Users\ANIKET KUMAR\Desktop\Image Processing\pout.jpg');
%A=imread('C:\Users\ANIKET KUMAR\Desktop\Image Processing\mammogram2.jpg');

lambda = 1;
alpha = 1; %determined experimentally
A1 = 1.5;  %determined experimentally
A2 = 1.5;  %determined experimentally
m = mean(A(:));
mu=membership(A); % Eq. 6.
v=non_membershipdegree(mu,lambda);
pi = hesitation(mu,lambda);
enh = hyperbolization(A,mu,pi,alpha,m);
E = A1*A + (A2*(enh.*A))./abs(max(max(enh)));
subplot(1,2,1); imshow(A);
subplot(1,2,2); imshow(E);
z = region_contrast(A,20,210,20,236);
disp(z)
