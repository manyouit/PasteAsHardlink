### Intro
This script will make you paste files as hardlink. Hard link is mirror link of original file. To be specific, **Hardlink** is identical to the **original identifier** of original file. 

It has an advantage over Ctrl-V-Paste that will make duplicate files and occupied another diskspace. This script will register Ctrl-H so that you can press this key combination to 'paste' as hard link.

### Note
- Files will be paste(ctrl-H) within **same parition**.
- Folders will not be paste(ctrl-H).
- Hard link files will be modified everywhere once modified at one place.
- I advice you paste files that are `hard to modify or need be synced` like media files. 
- Do not paste files that are `easy to modify` like docx text files except that you know what you do. 

### Before use
- Download and run AutoHotKey from https://www.autohotkey.com/
- Download my script folder and leave the folder where you want.
- Press `Win+R` and input `shell:startup` to open user's folder of startup exes.
- Mouse right click the folder add create a Windows lnk(Windows shortcuts not symlink)
- Put `path-to-autohotkey.exe pateh-to-PasteAsHardLink.ahk` to the input area and save the shortcut.
>note, when path cotains spaces in it, you neet wrap each path with a pair of colon.

### Use
- click the shortcut to run script immediately.
- The script will be runned every time when user log in.

### 介绍
这个脚本将使你把文件粘贴成硬链接。硬链接是原始文件的镜像链接。具体来说，**硬链接**与原始文件的**原始标识符**是相同的。

它比Ctrl-V-Paste有优势，后者会产生重复的文件并再次占用磁盘空间，而Ctrl-H-Pate只会产生一个相同的链接。这个脚本将注册Ctrl-H，这样你就可以按这个组合键来 "粘贴 "作为硬链接。

### 注意
- 文件将只在**相同的分区内**粘贴(ctrl-H)。
- 文件夹不会被粘贴（ctrl-H）。
- 硬链接文件一旦在一个地方被修改，就会到处被修改。
- 我建议你粘贴那些 "难以修改或需要同步 "的文件，如媒体文件。
- 不要粘贴那些 "容易修改 "的文件，如docx文本文件，除非你知道你在做什么。

###使用前
- 从https://www.autohotkey.com/ 下载AutoHotKey
- 下载我的脚本文件夹，并将该文件夹留在你想要的地方。
- 按`Win+R`并输入`shell:startup`以打开用户的启动程序的文件夹。
- 鼠标右键点击该文件夹，添加一个Windows lnk(Windows快捷方式，不是符号链接)
- 把 "path-to-autohotkey.exe path-to-PasteAsHardLink.ahk"放到输入区并保存快捷方式。
>注意，当路径中包含空格时，你必须用一对冒号来包裹每个路径。

###使用
- 点击该快捷方式来立即运行脚本。
- 该脚本将在每次用户登录时运行。

通过www.DeepL.com/Translator（免费版）翻译
