@echo off
:set proto_c= %cd%/../build/protoc-2.6.1-win32/protoc.exe:
set proto_c= %cd%/../build/protoc-2.5.0-win32/protoc.exe 
set proto_c#= %cd%/../build/Proto_c#/protogen.exe

:proto path �����·����ö������·�� proto_c ֻ֧��Ҫô���·�� Ҫô����·��:
set path_protocol=./
set python_out_dir=../Out/python
set java_out_dir=../Out/java
set c#_out_dir=../Out/c#
set pbc_out_dir=../Out/pbc

:python:
for %%i in (%path_protocol%*.proto) do (
	echo %proto_c% -I=%path_protocol% --python_out=%python_out_dir% %%i
	%proto_c% -I=%path_protocol% --python_out=%python_out_dir% %%i
)

:java:
for %%i in (%path_protocol%*.proto) do (
	echo %proto_c% -I=%path_protocol% --java_out=%java_out_dir%  %%i 
	%proto_c% -I=%path_protocol% --java_out=%java_out_dir%  %%i
)	

:c#:
for %%i in (%path_protocol%*.proto) do (
	echo %proto_c#% -i=%%i -o:%c#_out_dir%/%%~ni.cs -p:detectMissing
	%proto_c#% -i:%%i -o:%c#_out_dir%/%%~ni.cs -p:detectMissing
)

:pblua:
set protoc_gen_lua=%cd%/../protoc-gen-lua/plugin/protoc-gen-lua.bat
set lua_out_dir=../Out/lua
for %%i in (%path_protocol%*.proto) do (
	echo %proto_c% --plugin=protoc-gen-lua=%protoc_gen_lua% --lua_out=%lua_out_dir% %%i 
	%proto_c% --plugin=protoc-gen-lua=%protoc_gen_lua% --lua_out=%lua_out_dir% %%i  
)

:pbc:
for /r %%i in (*.proto) do (
	echo %proto_c% --proto_path=%~dp0 -o%pbc_out_dir%/%%~ni.pb %%i
	%proto_c% --proto_path=%~dp0 -o%pbc_out_dir%/%%~ni.pb %%i
)

pause