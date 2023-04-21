% 最適化問題の作成
%-------------------------------------
% prob という名前の最適化問題を作成し、これを説明するための情報として "Factory Location" を追加
prob = optimproblem("Description", ...
    "Factory Location");
    

% plot関数を使い、現在の最適化問題の様子をわかりやすく図示
show(prob)


% 最適化変数の定義 --> optimvar  (optimize variableから来てる？)
% シンボリック最適化変数x,yを作成し、この変数に「x」「y」という名前を付ける
prob = optimproblem("Description","Factory Location")
x = optimvar("x")
y = optimvar("y")
%------------------------------------------------


% 目的関数の作成
%---------------------------------------------------
% 前提条件の宣言
prob = optimproblem("Description","Factory Location");
x = optimvar("x");
y = optimvar("y");
X = [5 40 70];
Y = [20 50 15];

% 目的関数を宣言  d= ( (x−X)^2+(y−Y)^2 ) **(1/2)
d = sqrt( (x-X).^2 + (y-Y).^2 )


% dTotal, dの合計を取ってdTotalに格納
dTotal = sum(d)


% dTotalを目的関数Oblectiveに格納する
prob.Objective = dTotal


% 問題を表示
show(prob)


% +α　最適化問題のプロット
xvec = linspace(0,75);
yvec = linspace(0,75);
[x,y] = meshgrid(xvec,yvec);
distance = sqrt((x-X(1)).^2 + (y-Y(1)).^2)+...
    sqrt((x-X(2)).^2 + (y-Y(2)).^2)+...
    sqrt((x-X(3)).^2 + (y-Y(3)).^2);
contourf(x,y,distance)
ylabel("Y-Coordinate")
xlabel("X-Coordinate")
colorbar
%-------------------------------------


% 最適化問題を解く
%----------------------------
% 問題の宣言＋show
prob = optimproblem("Description","Factory Location");
x = optimvar("x");
y = optimvar("y");
X = [5 40 70];
Y = [20 50 15];
d = sqrt((x-X).^2 + (y-Y).^2);
dTotal = sum(d);
prob.Objective = dTotal;
show(prob)


% 初期値制定
initialGuess.x = 500
initialGuess.y = 500


% solve関数を用いて問題を解く
[sol,optval] = solve(prob,initialGuess)


% 最適解を取得
% (;をつけると結果の表示を省略できる)
xOpt = sol.x
yOpt = sol.y


% 最適解の位置をプロット（元のプロットに重ねる形）
hold on
scatter(xOpt,yOpt)
hold off

% dTotalの合計を求める
dTotalEval = evaluate(dTotal,sol)


% 補足
% 途中で使われているplotStore関数の定義
function plotStores()
X = [5 40 70];
Y = [20 50 15];
pgon1 = nsidedpoly(5,"Center",[X(1) Y(1)],"sidelength",3);
pgon2 = nsidedpoly(5,"Center",[X(2) Y(2)],"sidelength",3);
pgon3 = nsidedpoly(5,"Center",[X(3) Y(3)],"sidelength",3);
plot([pgon1 pgon2 pgon3])
axis equal
end
%------------------------------

