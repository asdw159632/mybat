@echo off
cd /d "%~dp0"

rem ��ʼ��
rem set data=2019/06/20
set "Y=%date:~2,1%"
if %Y% == 0 (
  set Y=%date:~3,1%
) else (
  set Y=%date:~2,2%
)
set "mouth=%date:~5,2%"
set "day=%date:~8,1%"
if %day% == 0 (
  set day=%date:~9,1%
) else (
  set day=%date:~8,2%
)
set "D=2422"
set /a "L=(Y-1)/4"

if %mouth% equ 02 (
  goto 2��
)
if %mouth% equ 03 (
  goto 3��
)
if %mouth% equ 04 (
  goto 4��
)
if %mouth% equ 05 (
  goto 5��
)
if %mouth% equ 06 (
  goto 6��
)
if %mouth% equ 07 (
  goto 7��
)
if %mouth% equ 08 (
  goto 8��
)
if %mouth% equ 09 (
  goto 9��
)
if %mouth% equ 10 (
  goto 10��
)
if %mouth% equ 11 (
  goto 11��
)
if %mouth% equ 12 (
  goto 12��
)
if %mouth% equ 01 (
  goto 1��
)

:2��
rem ����
set "����C=38700"
set /a "����R=(D*Y+����C)/10000-L"
rem ��ˮ
set "��ˮC=187300"
set /a "��ˮR=(D*Y+��ˮC)/10000-L"
if %Y% == 26 (
  set /a ��ˮR-=1
)
if %day% geq %����R% (
  if %day% geq %��ˮR% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15573.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15572.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15595.jpg" /f
)
goto end

:3��
rem ����
set "����C=56300"
set /a "����R=(D*Y+����C)/10000-L"
rem ����
set "����C=206400"
set /a "����R=(D*Y+����C)/10000-L"
if %Y% == 84 (
  set /a ����R+=1
)
if %day% geq %����R% (
  if %day% geq %����R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15575.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15574.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15573.jpg" /f
)
goto end

:4��
rem ����
set "����C=48100"
set /a "����R=(D*Y+����C)/10000-L"
rem ����
set "����C=201000"
set /a "����R=(D*Y+����C)/10000-L"
if %day% geq %����R% (
  if %day% geq %����R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15577.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15576.jpg" /f
  )
) else (
 reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15575.jpg" /f
)
goto end

:5��
rem ����
set "����C=55200"
set /a "����R=(D*Y+����C)/10000-L"
rem С��
set "С��C=210400"
set /a "С��R=(D*Y+С��C)/10000-L"
if %Y% == 8 (
  set /a С��R+=1
)
if %day% geq %����R% (
  if %day% geq %С��R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15579.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15578.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15577.jpg" /f
)
goto end

:6��
rem â��
set "â��C=56780"
set /a "â��R=(D*Y+â��C)/10000-L"
rem ����
set "����C=213700"
set /a "����R=(D*Y+����C)/10000-L"
if %day% geq %â��R% (
  if %day% geq %����R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15581.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15580.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15579.jpg" /f
)
goto end

:7��
rem С��
set "С��C=71080"
set /a "С��R=(D*Y+С��C)/10000-L"
if %Y% == 16 (
  set /a С��R+=1
)
rem ����
set "����C=228300"
set /a "����R=(D*Y+����C)/10000-L"
if %day% geq %С��R% (
  if %day% geq %����R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15583.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15582.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15581.jpg" /f
)
goto end

:8��
rem ����
set "����C=75000"
set /a "����R=(D*Y+����C)/10000-L"
if %Y% == 2 (
  set /a ����R+=1
)
rem ����
set "����C=231300"
set /a "����R=(D*Y+����C)/10000-L"
if %day% geq %����R% (
  if %day% geq %����R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15585.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15584.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15583.jpg" /f
)
goto end

:9��
rem ��¶
set "��¶C=76460"
set /a "��¶R=(D*Y+��¶C)/10000-L"
rem ���
set "���C=230420"
set /a "���R=(D*Y+���C)/10000-L"
if %day% geq %��¶R% (
  if %day% geq %���R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15587.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15586.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15585.jpg" /f
)
goto end

:10��
rem ��¶
set "��¶C=83180"
set /a "��¶R=(D*Y+��¶C)/10000-L"
rem ˪��
set "˪��C=234380"
set /a "˪��R=(D*Y+˪��C)/10000-L"
if %Y% == 89 (
  set /a ˪��R+=1
)
if %day% geq %��¶R% (
  if %day% geq %˪��R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15589.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15588.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15587.jpg" /f
)
goto end

:11��
rem ����
set "����C=74380"
set /a "����R=(D*Y+����C)/10000-L"
if %Y% == 89 (
  set /a ����R+=1
)
rem Сѩ
set "СѩC=223600"
set /a "СѩR=(D*Y+СѩC)/10000-L"
if %day% geq %����R% (
  if %day% geq %СѩR% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15591.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15590.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15589.jpg" /f
)
goto end

:12��
rem ��ѩ
set "��ѩC=71800"
set /a "��ѩR=(D*Y+��ѩC)/10000-L"
rem ����
set "����C=219400"
set /a "����R=(D*Y+����C)/10000-L"
if %Y% == 21 (
  set /a ����R-=1
)
if %day% geq %��ѩR% (
  if %day% geq %����R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15593.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15592.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15591.jpg" /f
)
goto end

:1��
rem С��
set "С��C=54055"
set /a "С��R=(D*Y+С��C)/10000-L"
if %Y% == 19 (
  set /a С��R-=1
)
rem ��
set "��C=201200"
set /a "��R=(D*Y+��C)/10000-L"
if %Y% == 82 (
  set /a ��R+=1
)
if %day% geq %С��R% (
  if %day% geq %��R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15595.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15594.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15593.jpg" /f
)
goto end

:end
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "WallpaperStyle" /t REG_SZ /d 2 /f
RunDll32.exe USER32.DLL, UpdatePerUserSystemParameters 1,True
exit
