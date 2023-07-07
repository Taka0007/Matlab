% -------------------------------
% 入力部分
% 行列の次元を入力として受け取る
n = input('行列の次元を入力してください: ');

% 行列の要素を入力として受け取る
disp('行列の要素を入力してください:');
A = zeros(n);
for i = 1:n
    for j = 1:n
        A(i,j) = input(sprintf('要素 A(%d,%d): ', i, j));
    end
end
%------------------------------------


% -----------------------------------
% 計算部分

if N==2
    ans = A(1,1)*A(2,2) - A(1,2)*A(2,1);

else
    ans = A(1,1)*A(2,2)*A(3,3) - A(1,1)*A(2,3)*A(3,2) + A(1,2)*A(2,3)*A(3,1) - A(1,2)*A(2,1)*A(3,3) + A(1,3)*A(2,1)*A(3,2) - A(1,3)*A(2,2)*A(3,1)
end
% ----------------------------------



% -----------------------------------
% 検算部分
disp('検算用');
disp(det(A));
% ------------------------------------