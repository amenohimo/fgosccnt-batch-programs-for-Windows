@echo off
rem+-------------------------------------------------+
rem fgosccnt DoubleClick              �쐬:2020/4/20
rem
rem ���U���g��ʂ��܂܂��t�H���_�ɓ���Ď��s����ƁA
rem fgosccnt�Ńe�[�u���ƃ��|�[�g���쐬�E�\����
rem �쐬�����t�@�C�����폜���邩�m�F���o���o�b�`�ł�
rem
rem �t�@�C�����͎����ō쐬���܂�
rem
rem Point�A�C�e������e��p�X���A���ꂼ���
rem ���ɍ��킹�ď��������Ă����p��������
rem                                           @ame54
rem+--------------------------------------------------+

rem �|�C���g�A�C�e���̖��O
set point_file_name=�|�C���g

rem python�̃p�X
set python="D:\_programs\Python\python.exe"

rem fgosccnt.py�̃p�X
set fgosccnt="D:\_programs\fgosccnt\fgosccnt.py"

rem csv2counter.py�̃p�X
set csv2counter=D:\_programs\fgosccnt\csv2counter.py

set yyyy=%date:~0,4%
set mm=%date:~5,2%
set dd=%date:~8,2%
set time2=%time: =0%
set hh=%time2:~0,2%
set mn=%time2:~3,2%
set ss=%time2:~6,2%
set time=%yyyy%-%mm%_%dd%-%hh%_%mn%_%ss%

rem ���ʂ�csv�t�@�C���̃p�X
set table_file_name=%time%.csv

rem #FGO����J�E���^�`���̕񍐃t�@�C���̃p�X
set report_file_name=report%time%.txt

echo �J�E���g�������J�n���܂� [%yyyy%/%mm%/%dd%_%hh%:%mn%:%ss%]
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