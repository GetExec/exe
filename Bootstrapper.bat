@echo off
:: Установка цвета текста
color 0A

:: Заголовок
echo ==============================
echo         Download Executor
echo ==============================

:: Информация о начале загрузки
echo.
echo Download Executor Started...

:: Specify the download URL and paths
set downloadUrl=https://getexploits.wtf/Executor.zip
set downloadPath=%USERPROFILE%\Desktop\file.zip
set extractPath=%USERPROFILE%\Desktop\Executor

:: Download the file using curl
curl -L -o %downloadPath% %downloadUrl%

:: Информация о завершении загрузки
echo.
echo Download completed.

:: Информация о начале разархивирования
echo Extracting files...

:: Extract the file using WinRAR
if not exist %extractPath% mkdir %extractPath%
"C:\Program Files\WinRAR\WinRAR.exe" x -ibck %downloadPath% %extractPath%

:: Информация о завершении разархивирования
echo Extraction completed.

:: Open the extracted folder
start "" "%extractPath%"

:: Delete the downloaded archive
del %downloadPath%

:: Завершение скрипта
echo.
echo ==============================
echo        Script completed
echo ==============================

:: Закрытие консоли
exit
