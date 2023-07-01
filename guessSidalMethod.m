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
      %  for k=1:n
        x(i)=(B(i)/A(i,i))-(A(i,[1:i-1,i+1:n])*P([1:i-1,i+1:n]))/A(i,i);
        P(i)=x(i);
      %  end 
    end
    
    fprintf('iteration no %d\n',j) ;
    x 
    j=j+1 ;
    
end 
fprintf('\n Total itteration= %d \n Roots are:\n  a=%d \n b=%d \n c=%d\n',j,x(1),x(2),x(3));

    