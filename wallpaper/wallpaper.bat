@echo off
cd /d "%~dp0"

rem 初始化
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
  goto 2月
)
if %mouth% equ 03 (
  goto 3月
)
if %mouth% equ 04 (
  goto 4月
)
if %mouth% equ 05 (
  goto 5月
)
if %mouth% equ 06 (
  goto 6月
)
if %mouth% equ 07 (
  goto 7月
)
if %mouth% equ 08 (
  goto 8月
)
if %mouth% equ 09 (
  goto 9月
)
if %mouth% equ 10 (
  goto 10月
)
if %mouth% equ 11 (
  goto 11月
)
if %mouth% equ 12 (
  goto 12月
)
if %mouth% equ 01 (
  goto 1月
)

:2月
rem 立春
set "立春C=38700"
set /a "立春R=(D*Y+立春C)/10000-L"
rem 雨水
set "雨水C=187300"
set /a "雨水R=(D*Y+雨水C)/10000-L"
if %Y% == 26 (
  set /a 雨水R-=1
)
if %day% geq %立春R% (
  if %day% geq %雨水R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15573.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15572.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15595.jpg" /f
)
goto end

:3月
rem 惊蛰
set "惊蛰C=56300"
set /a "惊蛰R=(D*Y+惊蛰C)/10000-L"
rem 春分
set "春分C=206400"
set /a "春分R=(D*Y+春分C)/10000-L"
if %Y% == 84 (
  set /a 春分R+=1
)
if %day% geq %惊蛰R% (
  if %day% geq %春分R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15575.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15574.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15573.jpg" /f
)
goto end

:4月
rem 清明
set "清明C=48100"
set /a "清明R=(D*Y+清明C)/10000-L"
rem 谷雨
set "谷雨C=201000"
set /a "谷雨R=(D*Y+谷雨C)/10000-L"
if %day% geq %清明R% (
  if %day% geq %谷雨R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15577.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15576.jpg" /f
  )
) else (
 reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15575.jpg" /f
)
goto end

:5月
rem 立夏
set "立夏C=55200"
set /a "立夏R=(D*Y+立夏C)/10000-L"
rem 小满
set "小满C=210400"
set /a "小满R=(D*Y+小满C)/10000-L"
if %Y% == 8 (
  set /a 小满R+=1
)
if %day% geq %立夏R% (
  if %day% geq %小满R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15579.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15578.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15577.jpg" /f
)
goto end

:6月
rem 芒种
set "芒种C=56780"
set /a "芒种R=(D*Y+芒种C)/10000-L"
rem 夏至
set "夏至C=213700"
set /a "夏至R=(D*Y+夏至C)/10000-L"
if %day% geq %芒种R% (
  if %day% geq %夏至R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15581.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15580.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15579.jpg" /f
)
goto end

:7月
rem 小暑
set "小暑C=71080"
set /a "小暑R=(D*Y+小暑C)/10000-L"
if %Y% == 16 (
  set /a 小暑R+=1
)
rem 大暑
set "大暑C=228300"
set /a "大暑R=(D*Y+大暑C)/10000-L"
if %day% geq %小暑R% (
  if %day% geq %大暑R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15583.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15582.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15581.jpg" /f
)
goto end

:8月
rem 立秋
set "立秋C=75000"
set /a "立秋R=(D*Y+立秋C)/10000-L"
if %Y% == 2 (
  set /a 立秋R+=1
)
rem 处暑
set "处暑C=231300"
set /a "处暑R=(D*Y+处暑C)/10000-L"
if %day% geq %立秋R% (
  if %day% geq %处暑R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15585.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15584.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15583.jpg" /f
)
goto end

:9月
rem 白露
set "白露C=76460"
set /a "白露R=(D*Y+白露C)/10000-L"
rem 秋分
set "秋分C=230420"
set /a "秋分R=(D*Y+秋分C)/10000-L"
if %day% geq %白露R% (
  if %day% geq %秋分R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15587.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15586.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15585.jpg" /f
)
goto end

:10月
rem 寒露
set "寒露C=83180"
set /a "寒露R=(D*Y+寒露C)/10000-L"
rem 霜降
set "霜降C=234380"
set /a "霜降R=(D*Y+霜降C)/10000-L"
if %Y% == 89 (
  set /a 霜降R+=1
)
if %day% geq %寒露R% (
  if %day% geq %霜降R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15589.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15588.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15587.jpg" /f
)
goto end

:11月
rem 立冬
set "立冬C=74380"
set /a "立冬R=(D*Y+立冬C)/10000-L"
if %Y% == 89 (
  set /a 立冬R+=1
)
rem 小雪
set "小雪C=223600"
set /a "小雪R=(D*Y+小雪C)/10000-L"
if %day% geq %立冬R% (
  if %day% geq %小雪R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15591.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15590.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15589.jpg" /f
)
goto end

:12月
rem 大雪
set "大雪C=71800"
set /a "大雪R=(D*Y+大雪C)/10000-L"
rem 冬至
set "冬至C=219400"
set /a "冬至R=(D*Y+冬至C)/10000-L"
if %Y% == 21 (
  set /a 冬至R-=1
)
if %day% geq %大雪R% (
  if %day% geq %冬至R% (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15593.jpg" /f
  ) else (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15592.jpg" /f
  )
) else (
  reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "Wallpaper" /d "%cd%\15591.jpg" /f
)
goto end

:1月
rem 小寒
set "小寒C=54055"
set /a "小寒R=(D*Y+小寒C)/10000-L"
if %Y% == 19 (
  set /a 小寒R-=1
)
rem 大寒
set "大寒C=201200"
set /a "大寒R=(D*Y+大寒C)/10000-L"
if %Y% == 82 (
  set /a 大寒R+=1
)
if %day% geq %小寒R% (
  if %day% geq %大寒R% (
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
