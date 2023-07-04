% 問8 グラフの描写

% ガウス分布のグラフをプロット
% y = \frac{1}{\sqrt{2\pi}} \cdot e^{-\frac{x^2}{2}}

prob8 = @(x) ((1/(2*pi)) .* exp(-x.^2/2));
range = [-5,5];
fplot(prob8,range)


% 問9 定積分の計算
prob9 = @(x) (1/(sqrt(2*pi))) .* exp(-x.^2/2);
integral(prob9,-inf,inf)


% 問10 ポアソン分布の計算
lamda   = 4;
prob10  = @(k) (lamda.^k)*(exp(-lamda)) ./ factorial(k);
range10 = 1:1:20;
Ans10   = prob10(range10)


% 問11 問10のものをプロットする
plot(range10,Ans10)


% 問12 csvに含まれるデータのプロット



% 問13 線形計画
f      = [-1 -1]';
A      = [5 3; 1 3];
b      = [45 30]';
Aeq    = [];
beq    = [];
lb     = [0 0]';
ub     = [];
intcon = [1 2];

[xopt fopt] = intlinprog(f,intcon,A,b,Aeq,beq,lb,ub)

% 問14 制約あり最適化問題(簡単ver)

% xが定まるとyも一意に定まるので、無制約最適化問題として扱う

% 目的関数(これを最小にする)
obje = @(x) 2*(x^2)-120*x;

% 最適化を行う
% 初期値は60
[x,fval] = fminnunc(obje,60)