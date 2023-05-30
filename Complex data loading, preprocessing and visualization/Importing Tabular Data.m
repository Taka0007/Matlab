% テーブルデータ読み込み
hurrs = readtable("hurricaneData1990s.txt")

% Countryの部分をCに格納
C = hurrs.Country

% 散布図の作成
scatter(hurrs.Windspeed,hurrs.Pressure)



