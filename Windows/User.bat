@echo off
title Choose a fruit
:Main
cls
echo Do you want to delete a user or add a user?
echo.
echo Delete a user
echo Add a user
echo.
REM request user for an input
set /p "option=Enter what you want to do (add/delete):"
if %option% == add goto :Export
if %option% == delete goto :Export
REM "else" statement if an unavailable input is submitted
goto :Main
:Export
echo You chose %option%. > ""