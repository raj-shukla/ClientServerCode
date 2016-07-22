scp boltzman4.c rshukla@10.42.43.1:/home/rshukla/OffloadedJobs
scp Boltzman.sh rshukla@10.42.43.1:/home/rshukla/OffloadedJobs

ssh  rshukla@10.42.43.1 "cd OffloadedJobs && chmod +x Boltzman.sh && /usr/bin/time -a  -o PrintText.csv -f "%S","%U",%P,%F,%R  ./Boltzman.sh"

scp rshukla@10.42.43.1:/home/rshukla/OffloadedJobs/outFileBoltzman ~/ClientServerCode


