clc;
clear all
x = 2;

%Bisection(x) 
%function a = Bisection(x)
    %a = x^7 +3
%end

f = @(x) x^7 +3;
n = input('Enter Value of n')
h = input('Enter Value of h')

for i = -n:h:n
    if f(i) * f(i+h)<0
        fprintf('%f,%f' , h,n)
    end
end

a = input('/nEnter value of a')
b = input('Enter value of b')
if f(a) * f(b) < 0
    disp('Root found in Given Interval');
elseif f(a) == 0
    fprintf('One root is = %d\n', a);
elseif f(b) == 0
    fprintf('One root is = %d\n', b);
else
    disp('No Root found in Given Interval');
end
