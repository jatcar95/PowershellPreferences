. (Resolve-Path "$env:LOCALAPPDATA\GitHub\shell.ps1")
. $env:github_posh_git\profile.example.ps1

$sp16 = 'C:\Users\Jake\Google Drive\College\Classes\Spring 2016'

# keybindings
Set-PSReadlineKeyHandler -Key Ctrl+P -Function PreviousHistory
Set-PSReadlineKeyHandler -Key Ctrl+N -Function NextHistory
Set-PSReadlineKeyHandler -Key Ctrl+F -Function ForwardChar
Set-PSReadlineKeyHandler -Key Ctrl+B -Function BackwardChar
Set-PSReadlineKeyHandler -Key Ctrl+E -Function EndOfLine
Set-PSReadlineKeyHandler -Key Ctrl+A -Function BeginningOfLine

#git stuff
function add {
	git add -A :/
}
function commit($m) {
	git commit -a -m $m
}
function push($branch) {
	git push origin $branch
}
function pull($branch) {
	git pull origin $branch
}
function status {
	git status
}
function co($branch) {
	git checkout $branch
}
