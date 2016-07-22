scp PrintText3.py rshukla@10.42.43.1:/home/rshukla/OffloadedJobs
scp file.zip rshukla@10.42.43.1:/home/rshukla/OffloadedJobs
scp PrintText.sh rshukla@10.42.43.1:/home/rshukla/OffloadedJobs

ssh  rshukla@10.42.43.1 "cd OffloadedJobs && chmod +x PrintText.sh && /usr/bin/time -a  -o PrintText.csv -f "%S","%U",%P,%F,%R  ./PrintText.sh > outFilePrintText"

scp rshukla@10.42.43.1:/home/rshukla/OffloadedJobs/outFilePrintText ~/ClientServerCode


