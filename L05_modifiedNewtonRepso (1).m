clc 
clear all ;
%@(x)x^2-7*x+10
%@(x) 2*x-7 
% @(x) 2 
f= input('Enter the function');
df= input(' Enter the derivative=');
d2f= input('Enter the double derivative =');
x0= input('Enter the initial guess:');
e= input('Enter the tolarence=');
n = input('Enter the iteartin number=');

for i= 1:n
    
    x1=x0-(f(x0)*df(x0))/(df(x0)^2-f(x0)*d2f(x0));
    
    fprintf('Iteration number %d : %0.4f \n', i , x1 )
    if abs(x0-x1)<= e 
        break 
    end 
    
    x0= x1 ;
    
end 
fprintf('The root is  %.4f', x1)
