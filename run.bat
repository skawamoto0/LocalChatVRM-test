pushd "%~dp0"
call .venv\Scripts\activate.bat
if not defined VIRTUAL_ENV goto :end
pushd local-simple-realtime-api-main
call run.bat
popd
timeout.exe /nobreak 10
call "C:\Program Files\nodejs\nodevars.bat"
pushd LocalChatVRM-main
start npm run dev
popd
:end
popd
exit /b
