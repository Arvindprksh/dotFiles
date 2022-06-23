alias LS='ls'
alias shcode='cd ~/personal/sh'
alias ccode='cd ~/coding/c'
alias cppcode='cd ~/coding/cpp'
alias sfastboot='sudo fastboot flash boot'
alias purple='cd ~/econ/projects/purple/'
alias midtronics='cd ~/econ/projects/midtronics/'
alias adbn="~/adb-linux key p3tvkey777"
alias diagnostics="cd /home/arvind/econ/projects/purple/athena_diagnostics_tool/app/src/main/java/com/android/athenadiagnostictool/"
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../../"
alias sessionCode="cd ~/personal/session/"
alias sl="ls"
alias nodejsExport="export PATH=$PATH:/home/arvind/econ/tools/node-v8.9.0-linux-x64/bin"
alias clear="clear -x"
#alias setupMidtronics="cd ~/DSS5000_kk && export PATH=/opt/java/jdk1.6.0_33/bin:$PATH && export JAVA_HOME=/opt/java/jdk1.6.0_33 && source ~/DSS5000_kk/build/envsetup.sh && lunch dss5000-eng "

alias buildUboot="cd ~/DSS5000_kk && export ARCH=arm && export CROSS_COMPILE='~/DSS5000_kk/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/arm-eabi-' && cd bootable/bootloader/uboot-imx && make clean;make dss5000_android_config;make"
alias celar="clear"
alias logicpd="cd ~/econ/projects/logicpd"
alias asi_datamyte="cd ~/econ/projects/asi_datamyte"
nodejsExport
alias remountSystemPart="adb root && sleep 2 && adb shell mount -o rw,remount,rw /system"

#SSH shortcuts
alias husainpc="set-title 'husainpc' && ssh -X econsys7@192.168.7.63"
alias sudarpc="set-title 'sudarpc' && ssh -X sudar@192.168.7.226"
alias sanpc="set-title 'sanpc' && ssh -X androidbuild@192.168.7.181"
alias android-build="ssh -X android-build@192.168.7.98"
alias vikaashpc="ssh -X vikaash@192.168.7.84"
alias harishpc="ssh -X harish@192.168.7.71"
alias prabhapc="ssh -X prabhakaranm@192.168.6.133"
alias sandeeppc="ssh -X sandeep@192.168.7.61"
alias seshapc="ssh -X sesha@192.168.6.169"

alias sourceBash="source ~/.bashrc"
alias cpuTemp="adb shell 'while [ 1 ] ; do  date +%T && cat /sys/class/thermal/thermal_zone0/temp ; sleep 3 ; done'"
alias oldPs1='export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$"'
alias buildPc2="ssh -X android-build@192.168.7.97"
#alias clear="xdotool key ctrl+l"
alias pd67="cd ~/esomimx6_aosp"

# Flash images present in Desktop
alias flashbootd="ll ~/Desktop/boot.img && echo 'econsys' | sudo -S fastboot flash boot  ~/Desktop/boot.img && notify-send 'flashed boot'"
alias flashsystemd="ll  ~/Desktop/system.img && echo 'econsys' | sudo -S fastboot flash system  ~/Desktop/system.img && notify-send 'flashed systemimage'"
alias flashubootd="ll  ~/Desktop/u-boot.imx && echo 'econsys' | sudo -S fastboot flash bootloader  ~/Desktop/u-boot.imx && notify-send 'flashed uboot'"
alias flashrecoveryd="ll  ~/Desktop/recovery.img && echo 'econsys' | sudo -S fastboot flash recovery  ~/Desktop/recovery.img && notify-send 'flashed recovery'"
alias flasheverythingd="flashbootd && flashsystemd && flashubootd && flashrecoveryd"

# flash images present at current working directory
alias flashboot="ll boot.img && sha1sum boot.img && echo 'econsys' | sudo -S fastboot flash boot boot.img && notify-send 'flashed boot'"
alias flashsystem="ll system.img && sha1sum system.img && echo 'econsys' | sudo -S fastboot flash system system.img && notify-send 'flashed systemimage'"
alias flashuboot="ll u-boot.imx && sha1sum u-boot.imx && echo 'econsys' | sudo -S fastboot flash bootloader u-boot.imx && notify-send 'flashed uboot'"
alias flashrecovery="ll recovery.img && sha1sum recovery.img && echo 'econsys' | sudo -S fastboot flash recovery recovery.img && notify-send 'flashed recovery'"

alias flasheverything="flashboot && flashsystem && flashuboot && flashrecovery"

alias redshift="redshift > /dev/null 2>&1 &"
alias ai="cd ~/econ/AI"
export bbb="/home/arvind/econ/projects/midtronics/tasks/evaluation/beaglebone/"
alias cdCurrTask="cd /home/arvind/econ/projects/midtronics/tasks/ibpulse/ETS-145/" 
# Use a file to store the current task and another command to update 
# the file instead of changing the alias everytime
alias apk="cd /home/arvind/econ/projects/purple/APK/"
alias capsa="cd /home/arvind/econ/projects/capsa"
alias linuxErrorCodes="xdg-open /home/arvind/Pictures/linuxErrorCodes.pdf &"
alias hackathon="cd /home/arvind/econ/hackathon/2019/"
alias nvLogin="sshpass -p 'nvidia' ssh -X nvidia@192.168.7.96"
alias arvindrprakash="shutdown now"
alias pdsbuild="sshpass -p econsys ssh -X pdsbuild@192.168.7.94"
alias infomark="cd ~/econ/projects/infomark"
alias hopper="/opt/hopper-v4/bin/Hopper"
#alias remSwap='find . -iname '\''.*.sw*'\'' | xargs rm -rf '
alias remSwap="find . -iname '.*.sw*' | xargs rm -rf "
alias vishnupc="sshpass -p 'econsys' ssh -X econsys8@192.168.7.228"
alias openfile="xdg-open $1"
############################################################################
# NCSU
############################################################################
alias xinuCode="cd /home/arvind/ncsu/courses/ece592/xinu/src/xinu"
alias itre="cd /home/arvind/ncsu/itre"
##############################################################################

alias sheets="/home/arvind/ncsu/GoogleSheetsSign-in-linux-x64/GoogleSheetsSign-in"


alias remorbittykey="ssh-keygen -f \"/home/arvind/.ssh/known_hosts\" -R \"192.168.7.2\""

alias logseq="/home/arvind/Downloads/appImages/Logseq-linux-x64-0.5.4.AppImage > /dev/null &2>1  & "
alias compilers="cd /home/arvind/ncsu/courses/sem2/ece566/projects/ncstate_ece566_spring2022/"
alias uvm="cd /home/arvind/ncsu/courses/sem2/ece634-os/cuda/src/nvidia_drv_latest/NVIDIA-Linux-x86_64-510.54/kernel/nvidia-uvm/"
alias dockb="sudo docker-compose build"
alias docku="sudo docker-compose up -d"
alias leet="cd /home/arvind/coding/leetcode"
alias compproj="cd /home/arvind/ncsu/courses/sem2/ece566/projects/ncstate_ece566_spring2022/projects/p3/C++"
alias vim="nvim"
alias llvm-dis-13="llvm-dis"
alias eso="cd /home/arvind/ncsu/courses/sem2/ece561/ESO-22/Project/"
