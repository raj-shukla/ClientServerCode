scp PrintText1.py rshukla@10.42.43.1:/home/rshukla/OffloadedJobs
scp PrintText.sh rshukla@10.42.43.1:/home/rshukla/OffloadedJobs

ssh  rshukla@10.42.43.1 "cd OffloadedJobs && chmod +x PrintText.sh && /usr/bin/time -a  -o PrintText.csv -f "%S","%U",%P,%F,%R  ./Boltzman.sh"

scp rshukla@10.42.43.1:/home/rshukla/OffloadedJobs/outFilePrintText ~/ClientServerCode


