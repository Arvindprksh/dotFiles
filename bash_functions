function toggleTouchpad(){
    if [[ $(synclient | grep "TouchpadOff" | sed "s/[^0-9]//g") == 1 ]]
        then
            synclient TouchpadOff=0;synclient TouchpadOff=0
    else
        synclient TouchpadOff=1;synclient TouchpadOff=1
            fi
}
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
function 7yuv(){
    /home/arvind/bin/7yuv-2.5/7yuv $1
 }
function set-title(){
  if [[ -z "$ORIG" ]]; then
    ORIG="$PS1"
  fi
  TITLE="\[\e]2;$*\a\]"
  PS1="${ORIG}${TITLE}"
}
redshiftControl(){
    if [ -z $(pgrep redshift) ];
    then
        redshift > /dev/null 2>&1  &     
    else
        pkill redshift
    fi
}
opencvBuild(){
export LD_LIBRARY_PATH="/home/arvind/coding/vision/installation/OpenCV-3.4.4/lib/"
g++ $1 -o $2 -L. -lopencv_core `pkg-config --cflags --libs opencv`
}

pushLinksRepo(){
	mv ~/Downloads/index.html /home/arvind/coding/repos/links/
	cd /home/arvind/coding/repos/links/
	git add index.html
	git commit -m "Updated links" 
	git push origin master 
	cd -
}


function vikaashRssh(){
if [ $# -eq 0 ]
then
ssh -N -o ServerAliveInterval=240 -R 43022:localhost:22  root@134.122.30.170
else
ssh -N -o ServerAliveInterval=240 -R $1:localhost:22  root@134.122.30.170
fi
}


function arvindRssh(){
if [ $# -eq 0 ]
then
ssh -N -o ServerAliveInterval=240 -R 43026:localhost:22  root@165.22.215.145
else
ssh -N -o ServerAliveInterval=240 -R $1:localhost:22  root@165.22.215.145
fi
}


get_crtime() {

    for target in "${@}"; do
        inode=$(stat -c '%i' "${target}")
        fs=$(df  --output=source "${target}"  | tail -1)
        crtime=$(sudo debugfs -R 'stat <'"${inode}"'>' "${fs}" 2>/dev/null | 
        grep -oP 'crtime.*--\s*\K.*')
        printf "%s\t%s\n" "${target}" "${crtime}"
    done
}

pKill(){
	pgrep $1 | xargs kill -9
}
getfromsan(){
	FILE_PATH=$1
	FILE_NAME=$(echo "$FILE_PATH" | rev | cut -d '/' -f1 | rev)
	echo "File name is $FILE_NAME"
	ssh -t root@165.22.215.145 scp -P 43027 -r androidbuild@localhost:$1 .
	scp -r root@165.22.215.145:$FILE_NAME .
}

scpTosan(){
	FILE_PATH=$1
	DEST_PATH=$2
	FILE_NAME=$(echo "$FILE_PATH" | rev | cut -d '/' -f1 | rev)
	echo "File name is $FILE_NAME"
	scp -r $FILE_NAME root@165.22.215.145: 
	ssh -t root@165.22.215.145 scp -P 43027 -r $1 androidbuild@localhost:$2
}

scpTobuildpc1(){
	FILE_PATH=$1
	DEST_PATH=$2
	FILE_NAME=$(echo "$FILE_PATH" | rev | cut -d '/' -f1 | rev)
	echo "File name is $FILE_NAME"
	scp -r $FILE_NAME root@165.22.215.145: 
	ssh -t root@165.22.215.145 scp -P 43024 -r $1 android-build@localhost:$2 
}

getfrombuildpc1(){
	FILE_PATH=$1
	FILE_NAME=$(echo "$FILE_PATH" | rev | cut -d '/' -f1 | rev)
	echo "File name is $FILE_NAME"
	ssh -t root@165.22.215.145 scp -P 43024 -r android-build@localhost:$1 .
	scp -r root@165.22.215.145:$FILE_NAME .
}

gitshortcuts(){
	alias gs="git status $*"
        alias gl="git log $*"
        alias gc="git checkout $*"
	alias gb="git branch $*"       
}

buildpclogin(){
	ifconfig ppp0 > /dev/null 2>&1
	if [ $? -eq 0 ] 
	then
		echo "Logging through VPN!!"
		ssh -X android-build@192.168.7.98
	else
		echo "Logging through VPS!!"
		ssh -Xt root@165.22.215.145 ssh -X android-build@localhost -p 43024
	fi
}

cconvert() {
       curl -s "http://www.google.com/finance/converter?a=$1&from=$2&to=$3" | sed '/res/!d;s/<[^>]*>//g';
}
csbuild() {
    local PROJDIR=$PWD
    cd /
    find $PROJDIR -name "*.c" -o -name "*.h" > $PROJDIR/cscope.files
    cd $PROJDIR
    cscope -Rbkq
}

