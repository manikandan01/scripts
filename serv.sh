#!/bin/bash


PS3="Enter the service name : "

select opt in apache nginx exit
do
	case $opt in
		apache)
       			ps -ef | grep apache2 |  grep -v "grep\|systemctl"
                       
		    
		    [ $?  -eq "0" ] && $(mail -s "apache2 started" manikandan.b@bambeeq.com <<< "the apache2 process is running") || $(mail -s "apache2 stopped" manikandan.b@bambeeq.com <<< "the apache2 service is stopped")
		     ;;

		nginx)
			ps -ef | grep nginx | grep -v grep 
                        [ $?  -eq "0" ] && $(mail -s "nginx started" manikandan.b@bambeeq.com<<<"The nginx process is running")  || echo $(mail -s "nginx stopped" manikandan.b@bambeeq.com <<< "the nginx service is stopped")
			 ;;
		 exit)
			 break
			 ;;
		 *)

			 echo "Error: Invalid options "
			 ;;
	 esac
 done
