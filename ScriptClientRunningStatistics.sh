scp ~/Softwares/dlib-18.18/examples/running_stats_ex.cpp rshukla@134.197.41.208:/home/rshukla/Softwares/dlib-18.18/examples
scp RunningStatistics.sh rshukla@134.197.41.208:/home/rshukla/OffloadedJobs

ssh  rshukla@134.197.41.208 "cd OffloadedJobs && chmod +x RunningStatistics.sh && ./RunningStatistics.sh"

scp rshukla@134.197.41.208:/home/rshukla/Softwares/dlib-18.18/examples/outFileRunningStatistics ~/ClientServerCode


