#!/bin/bash
#service=apache2

if (( $( ps -ef | grep apache2 |  grep -v "grep\|systemctl")))
then
[ $?  -eq "0" ] $(mail -s "apache2 started" manikandan.b@bambeeq.com <<< "the apache2 process is running") || $(mail -s "apache2 stopped" manikandan.b@bambeeq.com <<< "the apache2 service is stopped") 
else

#$(mail -s "apache2 started" manikandan.b@bambeeq.com <<< "the apache2 process is running") || $(mail -s "apache2 stopped" manikandan.b@bambeeq.com <<< "the apache2 service is stopped")
echo "Apache not started"
fi
