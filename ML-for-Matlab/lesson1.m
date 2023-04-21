% データの取得
% ファイル "J.txt" に保存されているデータをletterという変数に格納
letter = readtable("J.txt");


% データを格納してプロット
x = letter.X;
y = letter.Y;
plot(x,y)
axis equal  % 縦横比を補正











