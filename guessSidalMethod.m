A=input('Enter a coeffcient matrix A: ');
B=input('Enter a constant matrix B: ');
P=input('Enter initial guess vector: ');
e=input('Enter tollerance: ');
%n= input('Enter the  number of iteration: ');
n=length(B);
x=zeros(n,1);
Y=x+1;
j=1;
while abs(Y-x)>e
    Y=x;
    for i=1:n
        x(i)=(B(i)/A(i,i))-(A(i,[1:i-1,i+1:n])*P([1:i-1,i+1:n]))/A(i,i);
        P(i)=x(i);
    end
    fprintf('iteration no %d\n',j)
    x;
    I=i;
    j=j+1;
   % disp(i', x');
end  