## Set the title of the current terminal

function set-title(){
      if [[ -z "$ORIG" ]]; then
              ORIG=$PS1
                fi
                  TITLE="\[\e]2;$*\a\]"
                    PS1=${ORIG}${TITLE}
                }

function defaultTitle(){
    if [[ $(whoami) == "arvind" ]]
        then
        echo "Enter title choice"
            read choice
            if [ ! -z choice ]
                then
                    set-title $choice
                    if [[ $choice == *"minicom"* ]]
                        then
                            set-title "minicom"
                            echo "econsys" | sudo -S minicom
                    elif [[ $choice == *"logicpdBuild"* ]]
                            then
                            source ~/esomimx6_aosp/device/econ/pd67/env.sh
                    fi
            fi
    fi
}




## Parse the branch name
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

## force kill a task with its name
fkill(){
    kill -9 $(pgrep $1 )
}


##Perform the initalisations of Midtronics

setupMidtronics(){
    cd ~/DSS5000_kk
    export PATH=/opt/java/jdk1.6.0_33/bin:$PATH
    export JAVA_HOME=/opt/java/jdk1.6.0_33
    source build/envsetup.sh
    if [ $# = 1 ]
    then
        lunch $1-eng
    else
        lunch dss5000-eng
    fi
    set-title "dss5000Build"
}
setupLogicpd(){
    cd ~/esomimx6_aosp
    source device/econ/pd67/env.sh
    set-title "pd67BuildTerm"
    }

minicom(){
   echo 'econsys' | sudo -S minicom $(echo '$(@:2)')
}

alarm(){

echo "alarm is set for $1"
echo "message is $2"

while [ 1 ]
    do
    if [[ $(date +%T) == "$1" ]]
    then
        if [ $# -gt 1 ]
        then
            notify-send "Alarm alarm"
        else
            notify-send "$2"
        fi
        break
    fi
    done
}

function keyevent(){
    adb shell input keyevent $1
}

function buildOpencvApp(){
    export LD_LIBRARY_PATH="/home/arvind/econ/hackathon/2019/installation/OpenCV-3.4.4/lib/"
    g++ $*  -lopencv_core `pkg-config --cflags --libs opencv`
}

function cutTimestamp(){
    cut -d ' ' -f3- $1
}
function rockchipMinicom(){
    sudo minicom -D /dev/ttyUSB0 -w --capturefile=minicomLogs/minicom_$(date +%d-%M-%Y).cap -s rockchip
}
function updateLinkRepository(){
    git pull origin master
    mv ~/Downloads/index.html .
    git add -u
    git commit -m "Added a link"
    git push origin master
    git show HEAD
}

function initTimewarriorHooks(){
    task config uda.totalactivetime.type duration
    task config uda.totalactivetime.label Total active time
    task config uda.totalactivetime.values ''


    task config report.list.labels 'ID,Active,Age,Time Spent,...,Urg'
    task config report.list.labels 'id,start.age,entry.age,totalactivetime,...,urgency'

}

function code42(){
    alias mcuProj="cd /home/arvind/econ/projects/code42/tasks/mcu/tools/projects"
    alias sampleProj="cd /home/arvind/STM32Cube/Repository/STM32Cube_FW_F7_V1.16.0/Projects/STM32F767ZI-Nucleo/Examples"
    alias docs="nautilus /home/arvind/econ/projects/code42/documents/"
    alias nanoTask="cd /home/arvind/econ/projects/code42/tasks/nano/"
    alias croot="/home/arvind/econ/projects/code42"
    cd /home/arvind/econ/projects/code42
}
