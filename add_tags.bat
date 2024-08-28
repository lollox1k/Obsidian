@echo off
setlocal enabledelayedexpansion
set "folder=C:\Users\lollo\Documents\Obsidian"
for /r "%folder%" %%f in (*.md) do (
  (echo ---& echo tags: review& echo aliases:& echo cssclass:& echo ---& echo. & type "%%f") > "%%~dpnf.tmp"
  move /y "%%~dpnf.tmp" "%%f" > nul
)