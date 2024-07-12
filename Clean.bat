:: chrome核浏览器垃圾清理批处理，放在userData目录
:: rd/s/q "Media Cache"2>NUL
del /s/q *.tmp
del /s/q *.bak
del /s/f/q "component_crx_cache\*"
del /s/f/q "extensions_crx_cache\*"
del /s/f/q "Crashpad\*"
del /s/f/q "GrShaderCache\*"
del /s/f/q "Guest Profile\*"
del /s/f/q "ShaderCache\*"
:: 取得当前批处理所在路径
:: cd /d %~dp0
cd Default
::del /s/f/q "Pepper Data\*"
del /s/f/q "Application Cache\*"
del /s/f/q "Media Cache\*"
del /s/f/q "Service Worker\CacheStorage\*"
for /d %%d in ("Service Worker\CacheStorage\*") do rd /s/q "%%d"
for /d %%d in ("Local Storage\http*") do rd /s/q "%%d"
for /d %%d in ("IndexedDB\http*") do rd /s/q "%%d"
del /s/f/q Cache\*
del /s/f/q GPUCache\*
::pause