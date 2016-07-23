scp PrintText1.py rshukla@134.197.40.180:/home/rshukla/OffloadedJobs
scp PrintText.sh rshukla@134.197.40.180:/home/rshukla/OffloadedJobs

ssh  rshukla@134.197.40.180 "cd OffloadedJobs && chmod +x PrintText.sh && /usr/bin/time -a  -o PrintText.csv -f "%S","%U",%P,%F,%R  ./Boltzman.sh"

scp rshukla@134.197.40.180:/home/rshukla/OffloadedJobs/outFilePrintText ~/ClientServerCode


