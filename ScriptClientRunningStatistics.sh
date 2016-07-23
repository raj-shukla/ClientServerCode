scp ~/Softwares/dlib-18.18/examples/running_stats_ex.cpp rshukla@134.197.40.180:/home/rshukla/Softwares/dlib-18.18/examples
scp RunningStatistics.sh rshukla@134.197.40.180:/home/rshukla/OffloadedJobs

ssh  rshukla@134.197.40.180 "cd OffloadedJobs && chmod +x RunningStatistics.sh && /usr/bin/time -a  -o StatisticsRunningStatistics.csv -f "%S","%U",%P,%F,%R ./RunningStatistics.sh"

scp rshukla@134.197.40.180:/home/rshukla/Softwares/dlib-18.18/examples/outFileRunningStatistics ~/ClientServerCode


