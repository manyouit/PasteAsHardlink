/*
	挨踢君@漫游挨踢
	2022-11-22, 17:03
*/
#Include Explorer_GetPath.ahk

#If WinActive("ahk_exe explorer.exe")
~^H::
path := Explorer_GetPath()
;MsgBox, %path%
ofnames := SubStr(Clipboard, 1) ;ofname 代表原始文件名组的字符串（无引号）

;msgbox %ofnames%

ofnamesArray := StrSplit(ofnames , "`r`n")
For index, value in ofnamesArray
{
    ;MsgBox % "Item " index " is '" value "'"
    
    ofname := Trim(value, """") ;ofname 代表原始文件名（无引号）
    ;MsgBox, %ofname%
    ;Continue
    SplitPath, ofname, filename

    ;判断是否是文件夹
    AttributeString := FileExist(ofname)
    if(AttributeString = "D"){
        MsgBox, Directory exists!
        continue
    }

    HardlinkPath = %path%\%filename% ;HardlinkPath代表硬链接全路径
    
    ;判断是否有同名文件
    AttributeString := FileExist(HardlinkPath)
    if(AttributeString != ""){
        MsgBox, There is a file with same name as HardLink!
        continue
    }else if(SubStr(HardlinkPath, 1 , 1)=SubStr(ofname, 1 , 1))
    {
        ; if(HardlinkPath= ofname)
        ; {
        ;     MsgBox, original path equals to HardLink path!
        ;     return
        ; }
        ;sc = New-Item -ItemType Hardlink -Path %HardlinkPath% -Target %ofname%
        ;Run, powershell -noexit -Command %sc% ;试用期后去掉-noexit
        sc = mklink /H "%HardlinkPath%" "%ofname%"
        ;msgbox %sc%
        Run cmd.exe /c %sc% ,,hide
    }else{
        MsgBox, original drive does not equal to HardLink drive!
        return
    }
}

return
#IF
