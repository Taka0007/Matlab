% 最適化問題の作成

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


