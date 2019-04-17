#!/bin/tcsh

set echo

@ linenum = 1

foreach subj (`ls -d /Volumes/PANTHER_DS/AES_2016/AES101 | sed 's/\// /g' | awk '{print $4}'`)

foreach cond (Ex Rest)

echo "subj = " ${subj} ", cond = " ${cond}

#set locations = "find dir -name /Volumes/PANTHER_DS/AES_2016/${subj}/${subj}.${cond}/*gre_field*"
set name = field
foreach gre (/Volumes/PANTHER_DS/AES_2016/${subj}/${subj}.${cond}/*gre_field*)
mkdir /Volumes/DANIEL/Dicoms/${subj}/session-${cond}/fieldmap/
echo ${gre}
cp -r ${gre} /Volumes/DANIEL/Dicoms/${subj}/session-${cond}/fieldmap/${name}
set name = phase
end
end
end
