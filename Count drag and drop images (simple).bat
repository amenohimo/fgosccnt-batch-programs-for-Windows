@echo off
rem+-----------------------------------------------------+
rem fgosccnt D&D (simple)                  作成:2020/4/20
rem
rem リザルト画面をドラッグアンドドロップすると 、
rem fgosccntでテーブルとレポートを作成、表示するバッチです
rem ショートカットを作って使用可能です
rem                                               @ame54
rem+------------------------------------------------------+

@echo on
"D:\_programs\Python\python.exe" "D:\_programs\fgosccnt\fgosccnt.py" %*>output.csv
"D:\_programs\Python\python.exe" "D:\_programs\fgosccnt\csv2counter.py" --point ポイント output.csv>output.txt
output.csv
output.txt
pause