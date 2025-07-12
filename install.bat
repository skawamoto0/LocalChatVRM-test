pushd "%~dp0"
python -m venv .venv
call .venv\Scripts\activate.bat
if not defined VIRTUAL_ENV goto :end
pushd local-simple-realtime-api
pip install -r requirements.txt
popd
call "C:\Program Files\nodejs\nodevars.bat"
pushd LocalChatVRM
npm install
popd
:end
popd
exit /b
