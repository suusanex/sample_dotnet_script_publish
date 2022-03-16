@rem ユーザーに実行してもらうバッチファイル。.NET SDKを事前にインストールしておく必要がある。dotnet-scriptのインストールを行い、スクリプト（.csx）を実行する。

@rem dotnet scriptを使用するため、入っていない環境であればインストールする
dotnet tool list -g | %WinDir%\System32\find "dotnet-script" >NUL
if ERRORLEVEL 1 dotnet tool install -g dotnet-script   
if ERRORLEVEL 1 exit /b 0

@rem dotnet sctipt実行
dotnet script "%~dp0Script.csx"
