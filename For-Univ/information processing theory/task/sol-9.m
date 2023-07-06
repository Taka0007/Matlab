% 問1 行列積の計算
A = [3 1 2; 2 4 1; 0 1 2];
B = [4 0 1; 1 2 1; 1 0 4];
A*B

%{
    ans =
    15     2    12
    13     8    10
     3     2     9
%}


% 問2 行列式の計算
vec2 = [1 3 1 -2; 1 -2 1 0; -3 1 2 3; 0 2 -4 2];
det(vec2)

%{
    出力
    ans = -90
%}




% 問3 逆行列の導出
vec3 = [2 -1 4; 3 5 -2; -1 2 -1];
Ans3 = inv(vec3)
vec3 * Ans3

%{
    Ans3 =
   -0.0270    0.1892   -0.4865
    0.1351    0.0541    0.4324
    0.2973   -0.0811    0.3514

ans =
    1.0000    0.0000         0
         0    1.0000         0
   -0.0000   -0.0000    1.0000
%}


% 問4 逆行列(少し複雑ver)
alfa  = pi/4;
beta  = pi/6;
gamma = pi/3;
vec4  = [cos(alfa)*cos(beta)*cos(gamma)-sin(alfa)*sin(gamma) -cos(alfa)*cos(beta)*sin(gamma)-sin(alfa)*cos(gamma) cos(alfa)*sin(beta);
        sin(alfa)*cos(beta)*cos(gamma)+cos(alfa)*sin(gamma) -sin(alfa)*cos(beta)*sin(gamma)+cos(alfa)*cos(gamma) sin(alfa)*sin(beta);
        -sin(beta)*cos(gamma) sin(beta)*sin(gamma) cos(beta)];
disp('行列')
disp(vec4);
Ans4  = inv(vec4);
vec4 * Ans4



% 問5 連立一次方程式
A = [1 2 1; 2 1 1; 3 3 1];
b = [2 4 3]';  ! 'のせいでVScodeが見づらくなるので修正

Ainv = inv(A);
x = Ainv*b
%{
    x =
    1.0000
   -1.0000
    3.0000
%}




% 問6 固有ベクトル・固有値
vec6 = [6 -3 -7; -1 2 1; 5 -3 -6];

[V lamda] = eig(vec6);

vec6*V(:,1)


lamda(1,1)*V(:,1)




% 問7 3次方程式を解く
% x^3 -3x^2 + 7x -5 = 0

p = [1 -3 7 -5];
roots(p)