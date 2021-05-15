::chrome核浏览器垃圾清理批处理，放在userData目录
:: rd/s/q "Media Cache"2>NUL
del /s/q *.tmp
del /s/q *.bak
::取得当前批处理所在路径
::cd /d %~dp0
cd Default
del /f/q ChromeDWriteFontCache
del /s/f/q "Pepper Data\*"
del /s/f/q "Application Cache\*"
del /s/f/q "Media Cache\*"
for /d %%d in (IndexedDB\http*) do rd/s/q %%d
del /s/f/q Cache\*
del /s/f/q GPUCache\*
cd "Local Storage"
for /d %%d in (http*) do rd/s/q %%d
::pause