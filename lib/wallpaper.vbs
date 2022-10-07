set s=CreateObject("Wscript.Shell")
w=CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
if Wscript.Arguments.Count > 0 then
	s.RegWrite "HKCU\Control Panel\Desktop\WallPaper",w+"\"+Wscript.Arguments(0),"REG_SZ"
	s.Run "cmd /c RUNDLL32.EXE user32.dll UpdatePerUserSystemParameters", 1, True
end if