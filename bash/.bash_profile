#.bash_profile
## ~/.bash_login, ~/.profile 파일이 있는 경우 설정 내용을 참고합니다.
if [ -f ~/.bash_login ]; then
  . ~/.bash_login
fi

if [ -f ~/.profile ]; then
  . ~/.profile
fi

## oracle
# http://www.digitalsanctum.com/2007/07/26/installing-oracle-instant-client-on-mac-os-x/
#export ORACLE_HOME=/Applications/oracle/instantclient_10_2
#export DYLD_LIBRARY_PATH=$ORACLE_HOME
#export SQLPATH=$ORACLE_HOME
#export TNS_ADMIN=$ORACLE_HOME/admin
#export PATH=$ORACLE_HOME:$PATH
#export DYLD_LIBRARY_PATH=/opt/local/lib/oracle

alias polar_test='sqlplus polar/polardb@//10.98.98.41:1521/POLARDB'
alias cpctestdb='sqlplus k3/k3@//10.12.61.9:1521/CPCTEST'
export ORACLE_HOME=/Applications/instantclient_10_2_32bit
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$ORACLE_HOME
export SQLPATH=$ORACLE_HOME
export PATH=$PATH:$SQLPATH:
## end oracle

## 한글을 읽고 쓰기 위해서 다음 환경을 설정합니다.
#export LANG="ko_KR.UTF-8"
export LANG="ko_KR"
export LC_COLLATE=C

## svn, cvs, mutt 등에서 사용할 editor 를 설정합니다.
export EDITOR="/usr/bin/vi"  # TextMate 를 사용하는 경우

## Color
export LSCOLORS=GxFxCxDxbxegedabagacad

alias ls="ls -vGF" # -G는 색을 입히고 F는 폴더의 경우 뒤에 /표시
alias ll="ls -lv -GF" # long format으로
alias l="ls -lv -GF"
alias la="ls -alvGF" # .으로 시작하는 엔트리까지
alias grep='grep --color'
alias vi="vi '+syn on'" # vi 쓸때 syntax highlighting
alias vitail="ls -rt | tail -1 | xargs vi"
alias cattail="ls -rt | tail -1 | xargs cat"
alias rm="rm -i" # 삭제시 꼭 되묻기
alias gcc="gcc -Wall" # gcc 컴파일시 '사소한' 경고메시지까지 보기
alias cddown="cd ~/Downloads"
alias svnlog="LC_ALL=ko_KR.UTF-8 svn log"
alias pwd='echo "pwd -L = "`/bin/pwd`; echo "pwd -P = "`/bin/pwd -P`'
alias killtomcat="kill -9 `ps ax | grep apache | grep -v 'grep' | awk '{print $1}'`"
alias h="history"

# Prompt
export PS1='\[\033[00;33m\]\u\[\033[m\]@\[\033[00;36m\]\h \[\033[01;32m\]\w  \[\033[00m\]\$ '
export PATH=.:~/bin:$PATH

# 경로 이동 alias (Lotus)
alias cdhanmail="cd /hanmail/workspace/Hanmail2.0-integration"
alias cdweb="cd /Library/WebServer/Documents"
alias cdftp="cd /Users/ftp/VirtualUsers/Lotus"
alias mta2='telnet -l Lotus mta2.hanmail.net'
alias mta3="telnet -l Lotus mta3.hanmail.net"
alias cloud_lotus="ssh Lotus@10.13.228.171"
alias clog="touch /daum/logs/exception/error.log ; tail -f /daum/logs/exception/error.log | grep ERROR"
alias mst="ssh lotus@211.172.254.139" # srchad-mst
alias mst2="telnet -l lotus 211.172.254.139" #srchad-mst
alias relay1="ssh hanadmin@10.12.228.97" # srchad-imp-relay1
alias relay2="ssh hanadmin@10.12.228.140" # srchad-imp-relay2
alias batch2="ssh hanadmin@10.20.51.86" # srchad-batch-web2
alias batch4="ssh hanadmin@srchad-batch-web4"
alias batch6="ssh hanadmin@srchad-batch-web6"
alias batchstg="ssh hanadmin@10.15.85.148" # #srchad-batch-stage1
alias agency1="ssh hanadmin@10.20.51.79" # srchad-agency-web1
alias agency2="ssh hanadmin@10.20.51.80" # srchad-agency-web2
alias agency3="ssh hanadmin@10.20.51.81" # srchad-agency-web3
alias agency4="ssh hanadmin@10.35.37.142" # srchad-agency-web4
alias agency5="ssh hanadmin@10.35.37.204" # srchad-agency-web5
alias admin1="ssh hanadmin@10.20.51.82" # srchad-admin-web1
alias admin2="ssh hanadmin@10.20.51.83" # srchad-admin-web2
alias admin3="ssh hanadmin@10.20.51.84" # srchad-admin-web3
alias cagency1="ssh hanadmin@srchad-clix-agency1" # srchad-clix-agency1
alias cagency2="ssh hanadmin@srchad-clix-agency2" # srchad-clix-agency2
alias cadmin1="ssh hanadmin@srchad-clix-admin1" # srchad-clix-admin1
alias cadmin2="ssh hanadmin@srchad-clix-admin2" # srchad-clix-admin2
alias cfront1="ssh hanadmin@srchad-clix-front1" # srchad-clix-front1
alias cfront2="ssh hanadmin@srchad-clix-front2" # srchad-clix-front2
alias sas="telnet -l sas 10.10.251.4" # sas 서버
alias admon1="telnet -l hanadmin 10.10.40.42" # admon1 (morphere)
alias inspect2="rsh -l hanadmin inspect2"
alias deployer="ssh hanadmin@10.12.227.228" # srchad-deployer
alias fmstgdeploy="scp -p ~/Documents/taxbill_branch/TB_20120720_AgencyTaxbill/sapd-clix-fm/target/sapd-clix-fm.war hanadmin@batchstg:/daum/service/clix/fm/webapps/"

alias test1='ssh hanadmin@10.30.125.16' # srchad-polaris-test1
alias test2='ssh hanadmin@10.30.125.17' # srchad-polaris-test2
alias zzax="ssh lotuspond@lotuspond.zzax.net"
alias user1="ssh hanadmin@211.115.77.10"

# MacPorts Installer addition on 2011-07-15_at_13:29:48: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/subversion/bin:/opt/local/bin:/opt/local/sbin:$PATH

# fm test deploy
alias fmtest="scp -p /Users/Lotus/Documents/workspace-sts-2.9.2.RELEASE/sapd-clix-fm/target/sapd-clix-fm.war hanadmin@10.15.86.162:/daum/service/clix/fm/webapps/"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
