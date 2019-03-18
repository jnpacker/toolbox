# windows10-app-removal
Script(s) to disable pre-installed application on Windows that you need to do via PowerShell

## How to use
1. Clone this repository locally
2. Open PowerShell, using `Run as administrator`
3. Run the following command to enable scripts:
```
Set-ExecutionPolicy RemoteSigned
```
4. Choose `[A] Yes to All`
5. Execute the script .\windows10-disable-apps.ps1
6. Run the following command to disable scripts:
```
Set-ExecutionPolicy Restricted 
```
7. Choose `[A] Yes to All`