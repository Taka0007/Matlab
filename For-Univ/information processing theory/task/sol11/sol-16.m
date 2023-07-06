% 2次方程式の係数が与えられる。それをもとに解を求めるプログラム

% 1-77までの整数の中からランダムに3つ選ぶ。
% これを2次方程式の係数とする
coeff = randi([1,77],1,3);
disp('係数')
disp(coeff)

a = coeff(1);
b = coeff(2);
c = coeff(3);

% 方程式の解
Ans1 = (-b + sqrt(b^2-4*a*c)) / (2*a);
Ans2 = (-b - sqrt(b^2-4*a*c)) / (2*a);

if b^2-4*a*c > 0
disp('方程式は相異なる2つの実数解をもつ');
disp(Ans1);
disp(Ans2);

elseif b^2-4*a*c == 0
disp('方程式は重解を持つ');
disp(Ans1);

else
disp('方程式は相異なる2つの虚数解をもつ');
disp(Ans1);
disp(Ans2);
end

% 検算用
disp('検算用');
disp(roots(coeff));