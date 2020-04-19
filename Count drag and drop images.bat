@echo off
rem+-------------------------------------------------+
rem fgosccnt D&D                      作成:2020/4/20
rem
rem リザルト画面をドラッグアンドドロップすると 、
rem fgosccntでテーブルとレポートを作成、表示し
rem 作成したファイルを削除するか確認を出すバッチです
rem
rem ファイル名は時刻で作成します
rem 同時起動が可能です
rem ショートカットを作って使用可能です
rem
rem Pointアイテム名や各種パスを、それぞれの
rem 環境に合わせて書き換えてご利用ください
rem                                           @ame54
rem+--------------------------------------------------+

rem Pointアイテムの名前
rem (ドロップしないクエストではなんでも可)
set point_item_name=ポイント

rem python.exeのパス
set python="D:\_programs\Python\python.exe"

rem fgosccnt.pyのパス
set fgosccnt="D:\_programs\fgosccnt\fgosccnt.py"

rem csv2counter.pyのパス
set csv2counter="D:\_programs\fgosccnt\csv2counter.py"
 
set yyyy=%date:~0,4%
set mm=%date:~5,2%
set dd=%date:~8,2%
set time2=%time: =0%
set hh=%time2:~0,2%
set mn=%time2:~3,2%
set ss=%time2:~6,2%
set time=%yyyy%_%mm%_%dd%_%hh%_%mn%_%ss%

rem 出力csvファイルのパス
set table_file_name=O:\_workspace\FGO_Count\csv\output%time%.csv

rem #FGO周回カウンタ形式の報告ファイルのパス
set report_file_name=O:\_workspace\FGO_Count\report\report%time%.txt

echo カウント処理を開始します [%yyyy%/%mm%/%dd%_%hh%:%mn%:%ss%]
@echo on
%python% %fgosccnt% %* > %table_file_name%
%python% %csv2counter% --point %point_item_name% %table_file_name% > %report_file_name%
%table_file_name%
%report_file_name%
del /p %table_file_name%
del /p %report_file_name%