% 制約あり最適化問題をとく

% 必要なデータの読み込み
load Nutrition.mat 
food


% An Optimal Breakfastという名前の最適化問題を作成
prob = optimproblem("Description", ...
    "An Optimal Breakfast");


% 16行1列の最適化変数ベクトルを作成し、servings という名前を付ける
% また、下限値を0にしておく
servings = optimvar("varname",16,...
"LowerBound",0)






















