@echo off
rem+-------------------------------------------------+
rem fgosccnt DoubleClick (simple)     �쐬:2020/4/20
rem
rem ���U���g��ʂ��܂܂��t�H���_�ɓ���Ď��s����ƁA
rem fgosccnt�Ńe�[�u���ƃ��|�[�g���쐬�A�\����
rem �쐬�����t�@�C�����폜���邩�m�F���o���o�b�`�ł�
rem
rem �e��p�X�ƃ|�C���g�A�C�e���������ꂼ��̊���
rem ���킹�ď��������Ă����p��������
rem
rem                                           @ame54
rem+--------------------------------------------------+

for %%i in (*.png) do call :tmp %%i
"D:\_programs\Python\python.exe" "D:\_programs\fgosccnt\fgosccnt.py" %arg%>output.csv
"D:\_programs\Python\python.exe" "D:\_programs\fgosccnt\csv2counter.py" --point �|�C���g output.csv>output.txt
pause
:tmp
set arg=%1 %arg%
goto :EOF