scp ~/Softwares/dlib-18.18/examples/queue_ex.cpp rshukla@10.42.43.1:/home/rshukla/Softwares/dlib-18.18/examples
scp Sort.sh rshukla@10.42.43.1:/home/rshukla/OffloadedJobs

ssh  rshukla@10.42.43.1 "cd OffloadedJobs && chmod +x Sort.sh && /usr/bin/time -a  -o StatisticsSort.csv -f "%S","%U",%P,%F,%R ./Sort.sh"

scp rshukla@10.42.43.1:/home/rshukla/Softwares/dlib-18.18/examples/outFileSort ~/ClientServerCode


