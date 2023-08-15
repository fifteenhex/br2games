#!/bin/bash

#set -e
#set -x
set -u

for MKFILE in `find package/ -name "*.mk"`; do
	echo $MKFILE
	if [ `cat $MKFILE | grep "_SITE_METHOD = git" | wc -l` -ne 1 ]; then
		continue
	fi

	GITURL=`cat $MKFILE | grep "_SITE = " | cut -d " " -f 3`
	GITHASH=`git ls-remote $GITURL | grep HEAD | cut -f 1`
	sed -i "s/VERSION.*$/VERSION\ =\ ${GITHASH}/" $MKFILE
done
