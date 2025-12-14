@echo off

set "exec=%~n1.py"

start "%exec%" cmd /c "python %exec% & pause"