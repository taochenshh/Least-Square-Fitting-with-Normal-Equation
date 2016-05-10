function [RMSE,C,f]= LeastSquaresPoly(X,Y,m)
%Input  - X is a 1 x n abscissa vector
%       - Y is a 1 x n ordinate vector
%       - m is the degree of the least-squares polynomial
%Output - RMSE is the root mean squared error 
%       - C is the coefficient list for the polynomial
%         C(1) corresponds to the highest degree term
%       - f is the the anonymous function that fits the given data sets X,Y
n=length(X);
Y=Y';
X=X';
B=zeros(m+1,1);
F=zeros(n,m+1);

for i=1:m+1
    F(:,i)=X.^(i-1);
end

%Solve the matrix equation: F'FC=F'Y where C is the coefficient matrix
A=F'*F;
B=F'*Y;
C=A\B;
C=flipud(C);

% Generate the fitting function
f=poly2sym(C);
f=matlabFunction(f);
error=f(X)-Y;
RMSE=norm(error,2);
end

