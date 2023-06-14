clc 
clear all ;

f= input('Enter the function');
x0= input('Enter the initial guess:');
x1= input('Enter the second initial guess:');
e= input('Enter the tolarence=');
n = input('Enter the iteartin number=');

fx0 = f(x0);
fx1= f(x1);

for i= 1:n 
    
    x2= x1-fx1 *(x1 - x0) /(fx1-fx0);
    
    x0= x1 ;
    fx0 = fx1 ;
    x1= x2 ;
    fx1= f(x1);
    
    if abs(fx1)<= e 
        break 
    end 
    
   root= x1 ;
    
end

fprintf('The root is  %.4f \n iteration %d', root, i)

    %@(x)x^2-7*x+10
%@(x) 2*x-7 
% @(x) 2 






    