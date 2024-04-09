#!/bin/bash

WEEK=''

help_user(){
	echo -e "-h -> get help\n-w -> week number, necessary!"
	exit 0
}

while getopts 'hw:' flag; do
	case "${flag}" in
		h) help_user ;;
		w) WEEK="${OPTARG}";;
	esac
done

if [[ $WEEK == "" ]]
then
	echo -e "No week number provided, exiting"
	exit 1
else
	if [[ ${#WEEK} -eq 1 ]]
	then
		WEEK="0${WEEK}"
	fi
	echo -e "length: ${#WEEK}, var: $WEEK"
	DIRECTORY="DL-PW-${WEEK}-G26_Drilon_Chia-Hua"
	echo -e "searching PW in MSE-DeepLearn as \n${DIRECTORY}"
fi

if [ -d "${DIRECTORY}" ]
then
	echo -e "${DIRECTORY} does exist\nstarting copying material"
	cp -r ${DIRECTORY}/* ../submission/G26_Drilon_Chia-Hua/
	echo -e "copying done"
else
	echo -e "${DIRECTORY} does NOT exist, exiting"
	exit 1
fi

echo -e "ziping up everything"

cd ../submission/
zip -r G26_Drilon_Chia-Hua.zip G26_Drilon_Chia-Hua/
echo -e "done"

exit 0
