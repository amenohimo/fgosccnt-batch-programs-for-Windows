@echo off
REM+--------------------------------------------------------------------------+
REM fgosccnt drag and execute
REM
REM This batch file allows you to run fgosccnt on Windows in either of the
REM following ways:
REM  -Drag and drop to this batch file.
REM  -Send to this batch with "Send to" in the right-click menu of Explorer.
REM
REM In Windows 10, "Send to" is the following location:
REM C:\Users\[username]\AppData\Roaming\Microsoft\Windows\SendTo
REM
REM ! CAUTION !
REM If you are using a Japanese Windows environment, 
REM change the encoding of this batch file to "Shift JIS"
REM and the line feed code to "CRLF".
REM Otherwise this code won't work.
REM
REM                                                                    @ame54
REM+--------------------------------------------------------------------------+

REM
REM ARGUMENTS
REM

REM Choice of reading files or folders
REM
REM Use the following either options when dragging and dropping the folder
REM containing the screenshot images of the FGO result screen.
REM set args=-f
REM set args=--folder
REM
REM Or, if you want to drag and drop multiple result screens directly, you
REM  don't need to specify the options as shown below.
REM set args=
set arg=--folder

REM Other Arguments
REM
REM Below are other options.
REM Options marked with * are the default.
REM It is used even if it is not specified.
REM
REM --ordering notspecified *
REM --ordering filename
REM --ordering timestamp
REM --loglevel info *
REM --loglevel debug
REM --lang jpn *
REM --lang eng
REM --timeout 15*
REM
REM example:
REM set args=--timeout 35 --lang eng --loglevel debug --ordering filename
set args=--timeout 35

REM
REM CONSTANT
REM Please change according to each environment.
REM

REM Event-specific point item name
REM If it doesn't drop, you can make any settings.
set point_item_name=point

REM fgosccnt.py path
set python="C:\Users\ameno\scoop\apps\python\3.9.6\python.exe"

REM fgosccnt.pyのパス
set fgosccnt="C:\Users\ameno\fgosccnt\fgosccnt.py"

REM csv2counter.pyのパス
set csv2counter="C:\Users\ameno\fgosccnt\csv2counter.py"

REM table csv file name
set table_name=sccnt

REM report text file name
set report_name=report

REM table csv dir
set table_dir="C:\Users\ameno\Documents\FGO\csv"

REM report text dir
set report_dir="C:\Users\ameno\Documents\FGO\report"


REM
REM TIME
REM Create character strings from the current time to be used as :
REM -a part of the output file name 
REM -display the time at the start of processing 
REM
set yyyy=%date:~0,4%
set mm=%date:~5,2%
set dd=%date:~8,2%
set time2=%time: =0%
set hh=%time2:~0,2%
set mn=%time2:~3,2%
set ss=%time2:~6,2%

REM A part of the output file name 
REM By setting, you can leave multiple result files without overwriting.
REM You can change it to your liking.
set day_time=%yyyy%-%mm%_%dd%-%hh%_%mn%_%ss%

REM Time to display as processing start time
set start_time=%hh%:%mn%:%ss%


REM Path of output table csv file 
set table=%table_dir%%table_name%%day_time%.csv

REM The path of the text file that describes the report 
REM in the #FGO_Shukai_Counter format to be output
set report=%report_dir%%report_name%%day_time%.txt


REM
REM PROCESSING
REM
echo Start counting [%date% %start_time%]
@echo on
%python% %fgosccnt% %arg% %* %args% > %table%
%python% %csv2counter% --point %point_item_name% %table%>%report%

@REM View table and report
@REM Comment out or delete if you don't need it.
%table%
%report%

@REM Ask if you want to delete the created csv or text file.
del /p %table%
del /p %report%

pause