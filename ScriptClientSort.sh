scp ~/Softwares/dlib-18.18/examples/queue_ex.cpp rshukla@134.197.40.180:/home/rshukla/Softwares/dlib-18.18/examples
scp Sort.sh rshukla@134.197.40.180:/home/rshukla/OffloadedJobs

ssh  rshukla@134.197.40.180 "cd OffloadedJobs && chmod +x Sort.sh && /usr/bin/time -a  -o StatisticsSort.csv -f "%S","%U",%P,%F,%R ./Sort.sh"

scp rshukla@134.197.40.180:/home/rshukla/Softwares/dlib-18.18/examples/outFileSort ~/ClientServerCode


