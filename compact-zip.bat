chcp 65001
@echo off
::VARIAVEIS
set DATA=%date:~6,4%-%date:~3,2%-%date:~0,2%
set horainicio=%time:~0,2%%time:~3,2%
set ARQ-ORIGINAL="folder with xml files"
set zip="c:\Program Files\7-Zip\7z.exe"
set ARQ-DEST=C:\Compacta-ZIP\Compacta\
set dirarq=C:\Compacta-ZIP\DIRARQ.txt
set dirxml=C:\Compacta-ZIP\DIRXML.txt
set status=C:\Compacta-ZIP\STATUS.txt

@echo === INICIO %DATA%-%horainicio% ===
::Deleta Arquivos
del /s /q %ARQ-DEST%
dir %ARQ-ORIGINAL% /B /s /A:d > %dirarq%
for /f "tokens=*" %%i in (%dirarq%) do (
	forfiles /P "%%i" /M *xml /D -30 /C "cmd /c echo @path" > %dirxml%
	for /f "tokens=*" %%g in (%dirxml%) do (
		@echo %%i > %status%
		copy %%g %ARQ-DEST%
	)
	@echo %%i
		Dir /B/A-D "%ARQ-DEST%">NUL 2>&1&&(
			%zip% a %ARQ-DEST%%%~ni-%DATA%.zip "%ARQ-DEST%*.xml"
			move %ARQ-DEST%*.zip "%%i"
			forfiles /P "%%i" /M *xml /D -30 /C "cmd /c del @file"
		)
		del /s /q %ARQ-DEST%
)

set horafim=%time:~0,2%%time:~3,2%
@echo === FIM %DATA%-%horafim% ===
