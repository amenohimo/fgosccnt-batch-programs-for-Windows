@echo off
rem+-----------------------------------------------------+
rem fgosccnt D&D (simple)                  �쐬:2020/4/20
rem
rem ���U���g��ʂ��h���b�O�A���h�h���b�v����� �A
rem fgosccnt�Ńe�[�u���ƃ��|�[�g���쐬�A�\������o�b�`�ł�
rem �V���[�g�J�b�g������Ďg�p�\�ł�
rem                                               @ame54
rem+------------------------------------------------------+

@echo on
"D:\_programs\Python\python.exe" "D:\_programs\fgosccnt\fgosccnt.py" %*>output.csv
"D:\_programs\Python\python.exe" "D:\_programs\fgosccnt\csv2counter.py" --point �|�C���g output.csv>output.txt
output.csv
output.txt
pause