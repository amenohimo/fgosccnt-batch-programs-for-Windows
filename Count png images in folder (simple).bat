@echo off
rem+-------------------------------------------------+
rem fgosccnt DoubleClick (simple)     作成:2020/4/20
rem
rem リザルト画面が含まれるフォルダに入れて実行すると、
rem fgosccntでテーブルとレポートを作成、表示し
rem 作成したファイルを削除するか確認を出すバッチです
rem
rem 各種パスとポイントアイテム名をそれぞれの環境に
rem 合わせて書き換えてご利用ください
rem
rem                                           @ame54
rem+--------------------------------------------------+

for %%i in (*.png) do call :tmp %%i
"D:\_programs\Python\python.exe" "D:\_programs\fgosccnt\fgosccnt.py" %arg%>output.csv
"D:\_programs\Python\python.exe" "D:\_programs\fgosccnt\csv2counter.py" --point ポイント output.csv>output.txt
pause
:tmp
set arg=%1 %arg%
goto :EOF