@echo off
REM Windows one-click build script for AAAS LaTeX Template
REM Usage: double-click or run from cmd: build.bat

set MAIN=TempExample

echo [1/4] xelatex (pass 1)...
xelatex -interaction=nonstopmode %MAIN%.tex
if errorlevel 1 goto :error

echo [2/4] bibtex...
bibtex %MAIN%
if errorlevel 1 goto :error

echo [3/4] xelatex (pass 2)...
xelatex -interaction=nonstopmode %MAIN%.tex
if errorlevel 1 goto :error

echo [4/4] xelatex (pass 3)...
xelatex -interaction=nonstopmode %MAIN%.tex
if errorlevel 1 goto :error

echo.
echo Done: %MAIN%.pdf
goto :end

:error
echo.
echo Build failed. Check %MAIN%.log for details.
exit /b 1

:end
