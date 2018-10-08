#!/bin/bash

                      ps -ef | grep apache2 | grep -v grep
		      [ $? -eq "0" ] && echo "process running" || echo $(/etc/init.d/apache2 start) ": the process started"

#echo $(mail -s "apache2 stopped" manikandan.b@bambeeq.com <<< "the apache2 service is stopped")
