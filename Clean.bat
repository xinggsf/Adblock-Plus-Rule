:: rd/s/q "Media Cache"2>NUL
::取得当前批处理所在路径
cd /d %~dp0
cd Default
del /f/q ChromeDWriteFontCache
del /s/f/q "Pepper Data\*"
del /s/f/q "Application Cache\*"
del /s/f/q "Media Cache\*"
del /s/f/q "Local Storage\http*"
del /s/f/q Cache\*
del /s/f/q GPUCache\*
del /q bookmarks_*
del /s/q *.tmp
del /s/q *.bak
cd ..
::设置备份存放的路径以及压缩包文件名
set ArchiveName=..\dataCent_%date:~5,2%%date:~8,2%.7z
::要备份扩展，删除下一行 -x!之后的（包括-x!）
7z.exe u %ArchiveName% -up1q3r2x2y2z2w2 "Local State" Default -x!"Default\Extensions"
@echo 备份已完成！
echo.&echo.
::pause