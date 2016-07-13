scp kmean.c rshukla@134.197.40.180:/home/rshukla/OffloadedJobs
scp Kmean.sh rshukla@134.197.40.180:/home/rshukla/OffloadedJobs

ssh  rshukla@134.197.40.180 "cd OffloadedJobs && chmod +x Kmean.sh && ./Kmean.sh"

scp rshukla@134.197.40.180:/home/rshukla/OffloadedJobs/outFileKmean ~/ClientServerCode


