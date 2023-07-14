% 2つの数値ベクトルが与えられる
% 相関係数を返す

format long

% --------------------------------------
% 入力部分
% 1-77までのランダムな数を持つ数ベクトル(7777個の要素を持つ)を生成
A = rand(1, 7777) * randi([2,77]);
B = rand(1, 7777) * randi([2,77]);
% --------------------------------------

% --------------------------------------
% 処理部分
n = length(A);

% まずは共分散を求める
SUM = 0;
for i = 1:n
    SUM = SUM + (A(i)-mean(A))*(B(i)-mean(B));
end
covariance = (SUM/n) 

% 相関係数の導出
correlation_coefficient = covariance / (std(A)*std(B));
disp('解答');
disp(correlation_coefficient);
% --------------------------------------


% --------------------------------------
% 検算用
coeff = corrcoef(A,B);
disp('検算');
disp(coeff(1,2));
disp('誤差');
disp(abs(correlation_coefficient-coeff(1,2)));
% --------------------------------------