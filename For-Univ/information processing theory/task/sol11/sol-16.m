% 2次方程式の係数が与えられる。それをもとに解を求めるプログラム

coef = randi([1,77],1,3);
disp('係数')
coef



% 検算用
disp('検算用')
roots(coef)