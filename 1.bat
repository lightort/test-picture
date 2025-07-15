@echo off
setlocal enabledelayedexpansion

:: 设置计数器
set count=1

:: 临时改名，避免冲突
for %%f in (*.jpg *.JPG *.png *.PNG) do (
    ren "%%f" "temp_!count!%%~xf"
    set /a count+=1
)

:: 重置计数器
set count=1

:: 将临时文件改为最终格式：1.jpg、2.png 等
for %%f in (temp_*.jpg temp_*.JPG temp_*.png temp_*.PNG) do (
    set "ext=%%~xf"
    ren "%%f" "!count!%%~xf"
    set /a count+=1
)

echo 重命名完成。
pause
