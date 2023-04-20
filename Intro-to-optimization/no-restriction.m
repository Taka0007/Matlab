% Task-1
% 最適化問題の作成

% prob という名前の最適化問題を作成し、これを説明するための情報として "Factory Location" を追加
prob = optimproblem("Description", ...
    "Factory Location");
    
   
% Task-2
% plot関数を使い、現在の最適化問題の様子をわかりやすく図示
show(prob)
