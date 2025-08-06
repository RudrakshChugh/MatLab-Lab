clc;
clear all

f = @(x) x^3 + 7

a = input('Enter Starting Point')
b = input('Enter Ending Point')

tol = 0.001
while(b-a > tol)
    c = (a+b)/2
    if f(c) == 0
        break;
    else if f(a) * f(c) <0
            b = c;
    else
        a = c;
    end
    end
end
root = (a+b)/2
fprintf('Desired Valuye is %d\n' , root);

