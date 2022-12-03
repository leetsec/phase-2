#!/bin/sh
echo "Use "git add" to add your files, then run this script"
echo "Don't push the "gitpush_leetsec.sh" into the git, there is the git token in it and github will remove the token the second it is push to a public repository for security reasons"
if [ $# -eq 0 ]
then
        echo "Not enough arguments, usage : ./push.sh '<commit comments>'"
        exit
else
	tar xf .push/push.tar
	chmod +x gitpush_leetsec.sh
	./gitpush_leetsec.sh $1
fi
rm gitpush_leetsec.sh
