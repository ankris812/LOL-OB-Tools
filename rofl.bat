@echo off

title ������������OB�� ��������ɫ����
mode con:cols=60 lines=20

cd /d %~dp0

set a=%~1

taskkill /im "League of Legends.exe"

cls

if "%a:~-5%" NEQ ".rofl" (
	echo ��ӭʹ�ñ����ߣ�
	echo. 
	echo ������Ӣ�����ˡ���������OB��
	echo.
	echo ʹ�ò��裺
	echo.
	echo 1. ���������е� Game\League of Legends.exe �ļ�����һ����ݷ�ʽ���ƶ��������ߵ���ͬĿ¼�²�����Ϊ lol ���������������ʾ�ļ���չ������Ϊ lol.lnk����
	echo.
	echo 2. ������rofl�ļ��϶�������������������
	echo.
	echo ��������˳�
	pause>nul
	exit
)

if not exist "lol.lnk" (
	echo.
	echo ����������ʹ�ò���1��
	echo.
	echo ��������˳���׼����ɺ��밴��ʹ�ò������������ߡ�
	pause>nul
	exit
	)
) else (
	echo ��������
	
	start "" "lol.lnk" "%a%" -UseRads -Locale=zh_CN
	
)

echo ��������ɫ����
timeout /t 1 /nobreak
exit

pause
exit
