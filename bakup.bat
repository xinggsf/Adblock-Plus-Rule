::设置备份存放的路径以及压缩包文件名
set ArchiveName=..\dataCent_%date:~5,2%%date:~8,2%.7z
::要备份扩展，删除下一行 -x!之后的（包括-x!）-x!"Default\Extensions"
7z.exe u %ArchiveName% -up1q3r2x2y2z2w2 "Local State" "Default\Extension*" "Default\* Extension Settings" "Default\Bookmarks" "Default\Preferences" "Default\Shortcuts" "Default\Top Sites"
@echo 备份已完成！
echo.&echo.
::pause