@echo off
setlocal enabledelayedexpansion

if "%~1" == "" (
  echo Usage: %0 ^<directory1^> ^[directory2^]
  exit /b 1
)

set count=0
for %%i in (%*) do (
  set /a count+=1
)

if !count! gtr 2 (
  echo Error: Maximum 2 directories are allowed.
  exit /b 1
)

set "startDir1=%~1"
if not exist "%startDir1%" (
  echo Error: Directory %startDir1% does not exist.
  exit /b 1
)

if not exist "%startDir1%\*" (
  echo Error: Directory %startDir1% is empty.
  exit /b 1
)

set "size1=0"
for /r "%startDir1%" %%a in (*) do (
  set /a "size1+=%%~za"
  if "%%~pa" neq "!lastPath1!" (
    set "lastPath1=%%~pa"
    echo Size of !lastPath1!: !dirSize1! bytes
    set "dirSize1=0"
  )
  set /a "dirSize1+=%%~za"
)

echo Size of !lastPath1!: !dirSize1! bytes
echo Total size of %startDir1% and its subdirectories: %size1% bytes

if "%~2" == "" (
  exit /b 0
)

set "startDir2=%~2"
if not exist "%startDir2%" (
  echo Error: Directory %startDir2% does not exist.
  exit /b 1
)

if not exist "%startDir2%\*" (
  echo Error: Directory %startDir2% is empty.
  exit /b 1
)

set "size2=0"
for /r "%startDir2%" %%a in (*) do (
  set /a "size2+=%%~za"
  if "%%~pa" neq "!lastPath2!" (
    set "lastPath2=%%~pa"
    echo Size of !lastPath2!: !dirSize2! bytes
    set "dirSize2=0"
  )
  set /a "dirSize2+=%%~za"
)
echo Size of !lastPath2!: !dirSize2! bytes
echo Total size of %startDir2% and its subdirectories: %size2% bytes