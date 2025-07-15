@echo off
setlocal enabledelayedexpansion

:: 设置目标文件夹（当前文件夹，也可以改成指定路径）
set "folder=%~dp0"

:: 切换到目标文件夹
cd /d "%folder%"

:: 初始化计数器
set count=1

:: 处理所有 JPG 和 PNG 文件（不区分大小写）
for %%f in (*.jpg *.JPG *.png *.PNG) do (
    set "ext=%%~xf"
    ren "%%f" "!count!!ext!"
    set /a count+=1
)

echo 所有图片已重命名完成！
pause
