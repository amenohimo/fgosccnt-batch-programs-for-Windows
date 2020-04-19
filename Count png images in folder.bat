@echo off
rem+-------------------------------------------------+
rem fgosccnt DoubleClick              作成:2020/4/20
rem
rem リザルト画面が含まれるフォルダに入れて実行すると、
rem fgosccntでテーブルとレポートを作成・表示し
rem 作成したファイルを削除するか確認を出すバッチです
rem
rem ファイル名は時刻で作成します
rem
rem Pointアイテム名や各種パスを、それぞれの
rem 環境に合わせて書き換えてご利用ください
rem                                           @ame54
rem+--------------------------------------------------+

rem ポイントアイテムの名前
set point_file_name=ポイント

rem pythonのパス
set python="D:\_programs\Python\python.exe"

rem fgosccnt.pyのパス
set fgosccnt="D:\_programs\fgosccnt\fgosccnt.py"

rem csv2counter.pyのパス
set csv2counter=D:\_programs\fgosccnt\csv2counter.py

set yyyy=%date:~0,4%
set mm=%date:~5,2%
set dd=%date:~8,2%
set time2=%time: =0%
set hh=%time2:~0,2%
set mn=%time2:~3,2%
set ss=%time2:~6,2%
set time=%yyyy%-%mm%_%dd%-%hh%_%mn%_%ss%

rem 結果のcsvファイルのパス
set table_file_name=%time%.csv

rem #FGO周回カウンタ形式の報告ファイルのパス
set report_file_name=report%time%.txt

echo カウント処理を開始します [%yyyy%/%mm%/%dd%_%hh%:%mn%:%ss%]
for %%i in (*.png) do call :tmp %%i
@echo on
%python% %fgosccnt% %arg%>%table_file_name%
%python% %csv2counter% --point %point_file_name% %table_file_name%>%report_file_name%
%table_file_name%
%report_file_name%
del /p %table_file_name%
del /p %report_file_name%
:tmp
set arg=%1 %arg%
goto :EOF