set s = CreateObject("Wscript.Shell")
w=CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
f="barka.wav"
do
s.Run "powershell -c (New-Object Media.SoundPlayer """+w+"\"+f+""").PlaySync();", 0, True
loop