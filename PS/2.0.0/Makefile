DEST=
SRC=
DT=`date`

all:	pull local

dceg:   pull dcegdoc

pull:
	git pull
	
local:
	DT=`date`
	echo $(DT) " is the date"
	cd sources && metanorma compile document.adoc -o build
	git commit -a -m "Build $(DT)"
	git push

tst:
	echo $(DT)
	echo $(DT) " is the date"
