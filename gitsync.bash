
## gitsync.bash

````

#! /bin/bash
# //////////////////////////////////////////////////////////////////////////////////////////
# File Type   : BASH Script (needs GIT-CLI  installed  ).
# https git clone https://${1}:Peter\!....github.com/${1}/fail-fast-and-cheap.git
# ssh   git clone https://github.com/${1}/fail-fast-and-cheap.git
# //////////////////////////////////////////////////////////////////////////////////////////
 
 
 
# define your feedback here
 
 
MENU=true
 
SCRIPT_DIR=/home/boscp08/Projects/scratch/virtual-insanity/fail-fast-and-cheap
GITHUB_PROJECT_DIR=/home/boscp08/Projects/scratch/virtual-insanity/
GITLAB_PROJECT_DIR=/home/boscp08/Projects/gitlab.example.com/
GITLAB_PROJECT_DIR_PI8GB=/home/boscp08/Projects/gitlab.example.com/pi8gb/
 
 
enter_cont() {
    echo
    echo
    echo -n "Press enter to Continue"
    read
}
 
 
##################################################################
# Purpose: Procedure to clone de github repo on your pc
# Arguments:
# Return:
##################################################################
 
git_clone() {
 
 # echo "Running:"${FUNCNAME[0]}" $@
 
 arg1=${1} #${USER}
 arg2=${2} #${REPO}
 
 #echo "cd  ${GITHUB_PROJECT_DIR}"
 
 cd ${GITHUB_PROJECT_DIR}
 pwd
 rm -rf ${2}
 git clone https://github.com/${1}/${2}.git
 
 
 #echo  "cd ${GITLAB_PROJECT_DIR}"
 
 cd ${GITLAB_PROJECT_DIR}
 pwd
 rm -rf ${2}
 git clone http://gitlab.example.com/root/${2}.git
 
 # rsync -av --exclude=".*" src dest 
rsync -av --exclude=".*"  ${GITHUB_PROJECT_DIR}${2} ${GITLAB_PROJECT_DIR}  #maakt em eveentueel aan. 
 
cd ${GITLAB_PROJECT_DIR}${2}
 git add .
 # git status
 git commit -m `date +%Y%m%d_%H_%M`
# # git status
 git push origin master
 cd $SCRIPT_DIR
 
#---
echo "------------"
 cd ${GITLAB_PROJECT_DIR_PI8GB}
 rm -rf ${2}
 git clone http://192.168.2.11/root/${2}.git
# #git clone git@192.168.2.11:root/$1.git
 rsync -av --exclude=".*"  ${GITHUB_PROJECT_DIR}${2}  ${GITLAB_PROJECT_DIR_PI8GB}  #maakt em eveentueel aan. 
 cd ${GITLAB_PROJECT_DIR_PI8GB}${2}
 git add .
# # git status
 git commit -m `date +%Y%m%d_%H_%M`
# # git status
 git push origin master
# 
cd $SCRIPT_DIR
 
echo "  "
echo "hope the run will be okay."
enter_cont
 
}
 
 
##################################################################
# Purpose: show main menu
# Arguments:
# Return:
##################################################################
show_main_menu(){
clear
# A menu driven shell script
#"A menu is nothing but a list of commands presented to a user by a shell script"
 
# ----------------------------------
# Step: User defined function  10 20 30 ( 40 50)
# ----------------------------------
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}
# function to display menus
show_menus() {
  echo "~~~~~~~~~~~~~~~~~~~~~"
  echo " M A I N - M E N U  "
  echo "~~~~~~~~~~~~~~~~~~~~~"
  echo "~~~~~~~~~~~~~~~~~~~~~"
  echo "20. ezahr AZ_ACI_waardepapieren-demo_westeurope_azurecontainer_io"
  echo "21. ezahr chromebook_galliumOS"
  echo "22. ezahr commonground"
  echo "23. ezahr devops"
  echo "24. ezahr DigitalOcean"
  echo "25. ezahr huys"
  echo "26. ezahr julia"
  echo "27. ezahr k8s-repo"
  echo "28. ezahr OCI"
  echo "29. ezahr Waardepapieren-AZURE-ACI"
  echo "30. ezahr fail-fast-and-cheap"
  echo "31. ezahr MobileIron template"
  echo "32. ezahr samsungs10e"
  echo "33. ezahr dokuwiki"
  echo "34. ezahr LPC-repo"
  echo "35. ezahr azure-pipelines"
  echo "~~~~~~~~~~~~~~~~~~~~~"
  echo "36. boschpeter ansible"
  echo "37. boschpeter ansible-role-nvm"
  echo "38. boschpeter ansible_fundamentals"
  echo "39. boschpeter AZ_ACI_waardepapieren-demo_westeurope_azurecontainer_io"
  echo "40. boschpeter AZ_VM_waardepapieren-demo_westeurope_cloudapp_azure_com"
  echo "41. boschpeter dama-dmbok"
  echo "42. boschpeter DIGITALOCEAN-KUBERNETES"
  echo "43. boschpeter fail-fast-and-cheap"
  echo "44. boschpeter focal-fossa"
  echo "45. boschpeter go"
  echo "46. boschpeter HAPROXY-KUBERNETES"
  echo "47. boschpeter hello-kubernetes"
  echo "48. boschpeter julia_klasje"
  echo "49. boschpeter MOOC_UNIC"
  echo "50. boschpeter msc"
  echo "51. boschpeter my-simple-pipeline"
  echo "52. boschpeter mysql"
  echo "53. boschpeter OCI"
  echo "54. boschpeter provisioning"
  echo "55. boschpeter proxmox"
  echo "56. boschpeter raspberry"
  echo "57. boschpeter socialcoin-api"
  echo "58. boschpeter SocialcoinCity"
  echo "59. boschpeter student-notes"
  echo "60. boschpeter Tijd-in-de-database"
  echo "61. boschpeter UNIC"
  echo "62. boschpeter VaccinatieApp"
  echo "63. boschpeter vagrant"
  echo "64. boschpeter waardepapieren"
  echo "65. boschpeter Waardepapieren-AZURE-ACI"
  echo "66. boschpeter MCC-repo"
  echo "67. boschpeter LPC-repo"
  echo "68. boschpeter Kubernetes"
  echo "69. boschpeter nextcloud"
  echo "70. boschpeter docker"
  echo "71. boschpeter flint"
  echo "72. boschpeter 2B"
  echo "73. boschpeter datakluis-repo"
  echo "74. boschpeter IAM"
  echo "75. boschpeter julia"
  echo "76. boschpeter letsencrypt"
  echo "77. boschpeter sudoku"
  echo "78. boschpeter Advanced-Data-Modeling-Challenges-DMZ-Europe-2019"
  echo "79. boschpeter VON"
  echo "80. boschpeter datavault_alliance"
  echo "81. boschpeter Threat-Modeling"
  echo "82. boschpeter LeSS_Large_Scale_Scrum"
  echo "83. boschpeter SocialCoinChain"
  echo "84. boschpeter irma_api_server"
  echo "85. boschpeter uport-react"
  echo "86. boschpeter powerdesigner"
  echo "~~~~~~~~~~~~~~~~~~~~~"
  echo "99. Exit"
}
# read input from the keyboard and take a action
# invoke the one() when the user select 1 from the menu option.
# invoke the two() when the user select 2 from the menu option.
# Exit when user the user select 100 form the menu option.
 
read_options(){
	local choice
	read -p "Enter choice [ 1 - 99] " choice
	case $choice in
         20) git_clone ezahr AZ_ACI_waardepapieren-demo_westeurope_azurecontainer_io ;;
         21) git_clone ezahr chromebook_galliumOS ;;
         22) git_clone ezahr commonground ;;
         23) git_clone ezahr devops ;;
         24) git_clone ezahr DigitalOcean ;;
         25) git_clone ezahr huys ;;
         26) git_clone ezahr julia ;;
         27) git_clone ezahr k8s-repo ;;
         28) git_clone ezahr OCI ;;
         29) git_clone ezahr Waardepapieren-AZURE-ACI ;;
         30) git_clone ezahr fail-fast-and-cheap ;;
         31) git_clone ezahr MobileIron template ;;
         32) git_clone ezahr samsungs10e ;;
         33) git_clone ezahr dokuwiki ;;
         34) git_clone ezahr LPC-repo ;;
         35) git_clone ezahr azure-pipelines  ;;  
         36) git_clone boschpeter ansible ;;
         37) git_clone boschpeter ansible-role-nvm ;;
         38) git_clone boschpeter ansible_fundamentals ;;
         39) git_clone boschpeter AZ_ACI_waardepapieren-demo_westeurope_azurecontainer_io ;;
         40) git_clone boschpeter AZ_VM_waardepapieren-demo_westeurope_cloudapp_azure_com ;;
         41) git_clone boschpeter dama-dmbok ;;
         42) git_clone boschpeter DIGITALOCEAN-KUBERNETES ;;
         43) git_clone boschpeter fail-fast-and-cheap ;;
         44) git_clone boschpeter focal-fossa ;;
         45) git_clone boschpeter go ;;
         46) git_clone boschpeter HAPROXY-KUBERNETES ;;
         47) git_clone boschpeter hello-kubernetes ;;
         48) git_clone boschpeter julia_klasje ;;
         49) git_clone boschpeter MOOC_UNIC ;;
         50) git_clone boschpeter msc ;;
         51) git_clone boschpeter my-simple-pipeline ;;
         52) git_clone boschpeter mysql ;;
         53) git_clone boschpeter OCI ;;
         54) git_clone boschpeter provisioning ;;
         55) git_clone boschpeter proxmox ;;
         56) git_clone boschpeter raspberry ;;
         57) git_clone boschpeter socialcoin-api ;;
         58) git_clone boschpeter SocialcoinCity ;;
         59) git_clone boschpeter student-notes ;;
         60) git_clone boschpeter Tijd-in-de-database ;;
         61) git_clone boschpeter UNIC ;;
         62) git_clone boschpeter VaccinatieApp ;;
         63) git_clone boschpeter vagrant ;;
         64) git_clone boschpeter waardepapieren ;;
         65) git_clone boschpeter Waardepapieren-AZURE-ACI ;;
         66) git_clone boschpeter MCC-repo ;;
         67) git_clone boschpeter LPC-repo ;;
         68) git_clone boschpeter Kubernetes ;;
         69) git_clone boschpeter nextcloud ;;
         70) git_clone boschpeter docker ;;
         71) git_clone boschpeter flint ;;
         72) git_clone boschpeter 2B ;;
         73) git_clone boschpeter datakluis-repo ;;
         74) git_clone boschpeter IAM ;;
         75) git_clone boschpeter julia ;;
         76) git_clone boschpeter letsencrypt ;;
         77) git_clone boschpeter sudoku ;;
         78) git_clone boschpeter Advanced-Data-Modeling-Challenges-DMZ-Europe-2019 ;;
         79) git_clone boschpeter VON ;;
         80) git_clone boschpeter datavault_alliance ;;
         81) git_clone boschpeter Threat-Modeling ;;
         82) git_clone boschpeter LeSS_Large_Scale_Scrum ;;
         83) git_clone boschpeter SocialCoinChain ;;
         84) git_clone boschpeter irma_api_server ;;
         85) git_clone boschpeter uport-react ;;
         86) git_clone boschpeter powerdesigner ;;         
         99) Exit                                                                   ;;
		*) echo -e "${RED}Error...${STD}" && sleep 1
	esac
}
 
# ----------------------------------------------
# Step #3: Trap CTRL+C, CTRL+Z and quit singles
# ----------------------------------------------
#trap '' SIGINT SIGQUIT SIGTSTP
 
# -----------------------------------
# Step #4: Main logic - infinite loop
# ------------------------------------
while true
do
	show_menus
	read_options
done
}
 
 
#######################
## M A I N
# program starts here actually
#######################
 
echo "***"
echo "***  Welcome to a `uname` gitsync"
echo "***"
echo "*** SCRIPT_DIR = $SCRIPT_DIR                             "   #=/home/boscp08/Projects/scratch/virtual-insanity/fail-fast-and-cheap
echo "*** GITHUB_PROJECT_DIR= $GITHUB_PROJECT_DIR              "   #=/home/boscp08/Projects/scratch/virtual-insanity/
echo "*** GITLAB_PROJECT_DIR= $GITLAB_PROJECT_DIR              "   #=/home/boscp08/Projects/gitlab.example.com/
echo "*** GITLAB_PROJECT_DIR_PI8GB= $GITLAB_PROJECT_DIR_PI8GB  "   #=/home/boscp08/Projects/gitlab.example.com/pi8gb/
 
enter_cont
 
 
if [ ${MENU} = true ]
 then
clear
while true; do
    read -p "goto MAIN-MENU (y or n)" yn
    case $yn in
          [Yy]* ) show_main_menu ; break;;
          [Nn]* ) echo "N";  break;;
        * ) echo "Please answer yes or no.";;
    esac
done
fi
 
 
 
# eof

````
