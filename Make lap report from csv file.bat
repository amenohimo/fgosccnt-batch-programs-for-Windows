@echo off
rem+--------------------------------------------------+
rem csv2counter D&D                     �쐬:2020/4/20
rem fgosccnt.py�̏o��CSV�����h���b�O�A���h�h���b�v����
rem ����ƁAFGO����J�E���^�`���̌��ʂ��R�}���h�v����
rem �v�g�ɏo�͂��܂�
rem
rem Point�A�C�e������p�X���A���ꂼ��̊��ɍ��킹��
rem ���������Ă����p��������
rem                                           @ame54
rem+--------------------------------------------------+

rem �|�C���g�A�C�e���̖��O
set point_item_name=�|�C���g

rem csv2counter.py �̃p�X
set csv2counter=D:\_programs\fgosccnt\csv2counter.py

for %%i in (%*) do (
echo %%~nxi
python %csv2counter% --point %point_item_name% %%i
echo.
)
pause