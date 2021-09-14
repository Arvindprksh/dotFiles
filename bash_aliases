alias LS="ls"
alias celar="clear"
alias openBash="gvim ~/.bashrc"
alias restartWifi="sudo service network-manager restart"
alias touchDisable="synclient TouchpadOff=1;synclient TouchpadOff=1"
alias touchEnable="synclient TouchpadOff=0;synclient TouchpadOff=0"

alias bashAliases="gvim  ~/.bash_aliases && sourceBash"
alias clear="xdotool key ctrl+l"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias books="cd ~/coding/books"
alias remSwap="find . -iname '.*sw*' -exec rm {} \+"
alias studio="/home/arvind/coding/android-studio/bin/studio.sh"
alias firefox="/home/arvind/Downloads/firefox/firefox/firefox"
alias hopper="/opt/hopper-v4/bin/Hopper"
alias STM32CubeMX="/home/arvind/econ/projects/frieda/tools/STM32CubeMX/STM32CubeMX > /dev/null 2>&1"

alias nvidiaKeyMouseAccess="ssh -XC nvidia@192.168.55.1 x2x -north -to :1 &"
alias linuxErrorCodes="xdg-open /home/arvind/Documents/linuxErrorCodes.pdf"
alias dropboxcontrol="python3 ~/scripts/dropbox.py"
alias highmem="ps -eo pid,cmd,%mem --sort=-%mem | head -n 20"
alias findgitreject="find . -iname \"*.rej\""
#Temp aliases
alias myRssh="ssh -N -R 43022:localhost:22 root@165.22.215.145"
alias builddone="notify-send -t 0 'Build is completed' "

alias logicpdadb="adb -s 140189d4ea9a07fd"
alias mdxadb="adb -s 0123456789ABCDEF"
alias flasheverything="sudo fastboot flash boot boot.img && sudo fastboot flash system system.img && sudo fastboot reboot"
alias bigdisplay="xdotool key shift+F10 r 2"
alias smalldisplay="xdotool key shift+F10 r 1"
alias setBright="xrandr --output HDMI1 --brightness $1"
alias amongus="wine /home/arvind/.local/share/Steam/steamapps/common/Among\ Us/Among\ Us.exe"
alias obsidian="/home/arvind/tools/Obsidian-0.12.10.AppImage > /dev/null 2>&1 &"

######### Ssh Aliases ###########################################################################################################

alias sudarlogin="ssh -X sudar@192.168.7.226"
alias yeshpc="ssh -X uday@192.168.7.235"
alias husaintunnel="ssh -X root@165.22.60.76"
alias sanlogin="ssh -Xt root@165.22.215.145 ssh -X androidbuild@localhost -p 43027"
alias nvidiaLogin="ssh -X nvidia@192.168.55.1"
alias lenovologin="ssh -X arvind@192.168.1.5"
alias piLogin="ssh -X pi@192.168.1.9"
alias lenovoPc="ssh -X arvind@192.168.1.97"
alias avatarinlogin="ssh -X avatarin"
alias dropletlogin="ssh -X root@165.22.215.145"
alias buildpc2="ssh -X android-build@192.168.7.87"

################################################################################################################################


######## Jump to workspace aliases #############################################################################################

alias turck="cd ~/econ/projects/turck"
alias silex="cd ~/econ/projects/midtronics/silexIntegration"
alias mdx="cd ~/econ/projects/midtronics"
alias rustcode="cd /home/arvind/coding/rust"
alias code42="cd /home/arvind/econ/projects/frieda/tasks/"
alias hackathon="cd /home/arvind/coding/vision/hackathon"
alias logicpd="cd ~/econ/projects/logicpd"
alias ccode="cd ~/coding/c"
alias cppcode="cd ~/coding/cpp"
alias shcode="cd ~/coding/shell"
alias pycode="cd ~/coding/python"
alias gocode="cd ~/coding/go"
alias usefulLinks="cd ~/coding/Useful-Kernel-Links"
alias smartlinx="cd ~/econ/projects/smartlinx"
alias ai="cd ~/coding/ai/"
alias qdlaser="cd ~/econ/projects/qdlaser"

###############################################################################################################################


################# NCSU ########################################################################################################

alias xinucode="cd /home/arvind/ncsu/courses/ece592/xinu/src/xinu"
alias simcache="cd /home/arvind/ncsu/courses/ece563/project1/sim_cache"

