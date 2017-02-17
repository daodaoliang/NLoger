rmdir /S /Q %~dp0..\NLogger\release
rmdir /S /Q %~dp0..\NLogger\debug
rmdir /S /Q %~dp0..\NLogger\build_
rmdir /S /Q %~dp0..\Example\build_
rmdir /S /Q %~dp0..\Example\release
rmdir /S /Q %~dp0..\Example\debug
rmdir /S /Q %~dp0..\bin
del /Q %~dp0..\Makefile*
del /Q %~dp0..\NLogger\Makefile*
del /Q %~dp0..\Example\Makefile*
