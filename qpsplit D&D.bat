@echo off
rem+-------------------------------------------------+
rem qpsplit.py �p
rem                                           @ame54
rem+-------------------------------------------------+

rem python�̃p�X
set python="D:\_programs\Python\python.exe"

rem qpsplit.py�̃p�X
set qpsplit="D:\_programs\fgosccnt\qpsplit.py"

rem ���s���������̃���
set yyyy=%date:~0,4%
set mm=%date:~5,2%
set dd=%date:~8,2%
set time2=%time: =0%
set hh=%time2:~0,2%
set mn=%time2:~3,2%
set ss=%time2:~6,2%
set time=%yyyy%_%mm%_%dd%_%hh%_%mn%_%ss%

echo QP�ɂ��摜�̕��ނ��J�n���܂� [%date% %time%]
@echo on
%python% %qpsplit% %*

pause