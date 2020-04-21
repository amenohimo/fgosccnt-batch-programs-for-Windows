@echo off
rem+--------------------------------------------------+
rem csv2counter D&D                     作成:2020/4/20
rem fgosccnt.pyの出力CSVをドラッグアンドドロップする
rem と、FGO周回カウンタ形式の結果をコマンドプロンプト
rem に出力します
rem
rem Pointアイテム名やパスを、それぞれの環境に合わせて
rem 書き換えてご利用ください
rem                                           @ame54
rem+--------------------------------------------------+

rem ポイントアイテムの名前
set point_item_name=ポイント

rem csv2counter.py のパス
set csv2counter=D:\_programs\fgosccnt\csv2counter.py

for %%i in (%*) do (
echo %%~nxi
python %csv2counter% --point %point_item_name% %%i
echo.
)
pause
