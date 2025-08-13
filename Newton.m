clc;
clear all
syms x

f = @(x) (cos(x));
g = @(x) diff(f(x));
h = @(x) diff(f(x));

x0 = input('Initial Input')
n = input('No. of Iterations')
e = input('Accuracy')

p = g(x0)
if p==0
    fprintf('Initial Value is not apt\n')
    x0 = input('new initial value is')
end
q = abs(f(x0)*h(x0) / g(x0)^2);
if q==1
    fprintf('Method Fails');
    exit();
elseif q>1
    fprintf('Method Diverges so Enter new Initial value')
    x0 = input('\n New Initial value is')
else
    disp('Initial Value is suistable')
end
k = 1;
while k<=n
    x1 = x0 - (f(x0)/g(x0));
    if abs(x1-x0)<e
        fprintf('Desired root = %f , itertaions taken=%d' , x1,k)
        break;
    else
        k = k+1;
        x0 = x1;
    end
end
