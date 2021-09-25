@echo off
	del "%tmp%\*.*" /s /q /f
	FOR /d %%p IN ("%tmp%\*.*") DO rmdir "%%p" /s /q

	del "C:\Windows\Temp\*.*" /s /q /f
	FOR /d %%p IN ("C:\Windows\Temp\*.*") DO rmdir "%%p" /s /q

	del /F /Q %APPDATA%\Microsoft\Windows\Recent\*
	del /F /Q %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*
	del /F /Q %APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*
	del /F /Q C:\Windows\Prefetch\*.*

	tree
