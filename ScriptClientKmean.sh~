scp kmean.c rshukla@10.42.43.1:/home/rshukla/OffloadedJobs
scp Kmean.sh rshukla@10.42.43.1:/home/rshukla/OffloadedJobs

ssh  rshukla@10.42.43.1 "cd OffloadedJobs && chmod +x Kmean.sh && /usr/bin/time -a  -o StatisticsKmean.csv -f "%S","%U",%P,%F,%R ./Kmean.sh"

scp rshukla@10.42.43.1:/home/rshukla/OffloadedJobs/outFileKmean ~/ClientServerCode


