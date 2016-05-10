close all;clear all;clc;
X=[1960 1970 1990 2000];
Y=[3039585530 3707145887 5281653820 6079603571];


display('Least Squares Line Fitting:');
m=1;
[RMSE1,C,f1]= LeastSquaresPoly(X,Y,m);
fprintf('The coefficients of the fitting line are:\n')
fprintf('c1=%4.3f and c2=%4.3f \n',C(2),C(1));
fprintf('The root mean squared error of line fitting is RMSE1=%9.8f \n',RMSE1);
xx1=1980;
yy1=f1(xx1);
fprintf('The population in 1980 is %1.0f \n',yy1);
figure(1);
plot(X,Y,'o','MarkerFaceColor','g','MarkerEdgeColor','b','MarkerSize',8);
hold on;
x1=1950:1:2010;
y1=f1(x1);
plot(x1,y1,'b');
title('Least Squares Line Fitting');
xlabel('Year');
ylabel('Population');
legend('Original data','Fitting Line');

display('=========================');
display('Least Squares Parabola Fitting:');
m=2;
[RMSE2,C,f2]= LeastSquaresPoly(X,Y,m);
fprintf('The coefficients of the fitting parabola are:\n');
fprintf('c1=%4.3f,c2=%4.3f and c3=%4.3f \n',C(3),C(2),C(1));
fprintf('The root mean squared error of parabola fitting is RMSE2=%9.8f \n',RMSE2);
xx2=1980;
yy2=f2(xx1);
fprintf('The population in 1980 is %1.0f \n',yy2);
figure(2);
plot(X,Y,'o','MarkerFaceColor','g','MarkerEdgeColor','b','MarkerSize',8);
hold on;
x2=1950:1:2010;
y2=f2(x2);
plot(x2,y2,'b');
title('Least Squares Parabola Fitting');
xlabel('Year');
ylabel('Population');
legend('Original data','Fitting Parabola');

