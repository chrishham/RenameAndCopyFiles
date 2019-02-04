REM set LocalPath=G:\WINSCHED\IRI\AEXPD027
set ToLogFile= 1^>^> E:\Logs\WINSCHED\IRI\AEXPD027\OUTPUT.LOG 2^>^&1
 
set SourceServer=\\v900500002\Files\Public\P06751\
set SourcePath=\"ΧΡΕΩΣΕΙΣ ΑΣΦΛΑΛΙΣΤΡΩΝ ΟΜΑΔΙΚΟΥ ΑΣΦΑΛΙΣΤΗΡΙΟΥ_IRIS"\
set SourceFile=ASFALISTRA.TXT
set DestinationServer=D:\FTPRootProd\CENTRAL\FTPUser
set DestinationPath=\IRI\AFTPD027\
 
echo **************************************************************** %ToLogFile%
 
echo date /T %ToLogFile%
date /T %ToLogFile%
echo Error : %errorlevel% %ToLogFile%
 
echo time /T %ToLogFile%
time /T %ToLogFile%
echo Error : %errorlevel% %ToLogFile%
 
if exist  %SourceServer%%SourcePath%ASFALISTRA.TXT goto ExecuteBatch
COPY /Y NUL %DestinationServer%%DestinationPath%ASFALISTRA.TXT >NUL
echo Error : 0 "Δεν υπάρχει Αρχείο" %ToLogFile%
exit /b 0
 
:ExecuteBatch
echo move /y %SourceServer%%SourcePath%%SourceFile% %DestinationServer%%DestinationPath% %ToLogFile%
move /y %SourceServer%%SourcePath%%SourceFile% %DestinationServer%%DestinationPath% %ToLogFile%
echo Error : %errorlevel% %ToLogFile%
 
exit /b 0