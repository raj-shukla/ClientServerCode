scp opencv-3.1.0.zip rshukla@10.42.43.1:/home/rshukla/OffloadedJobs
scp FileSearch.sh rshukla@10.42.43.1:/home/rshukla/OffloadedJobs

ssh  rshukla@10.42.43.1 "cd OffloadedJobs && chmod +x FileSearch.sh && /usr/bin/time -a  -o StatisticsFileSearch.csv -f "%S","%U",%P,%F,%R  ./FileSearch.sh > outFileFileSearch && > outFileFileSearch"

scp rshukla@10.42.43.1:/home/rshukla/OffloadedJobs/outFileFileSearch ~/ClientServerCode


