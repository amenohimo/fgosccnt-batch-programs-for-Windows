@echo off
rem+-------------------------------------------------+
rem qpsplit.py 用
rem                                           @ame54
rem+-------------------------------------------------+

rem pythonのパス
set python="D:\_programs\Python\python.exe"

rem qpsplit.pyのパス
set qpsplit="D:\_programs\fgosccnt\qpsplit.py"

rem 実行した日時のメモ
set yyyy=%date:~0,4%
set mm=%date:~5,2%
set dd=%date:~8,2%
set time2=%time: =0%
set hh=%time2:~0,2%
set mn=%time2:~3,2%
set ss=%time2:~6,2%
set time=%yyyy%_%mm%_%dd%_%hh%_%mn%_%ss%

echo QPによる画像の分類を開始します [%date% %time%]
@echo on
%python% %qpsplit% %*

pause