scp opencv-3.1.0.zip rshukla@134.197.40.180:/home/rshukla/OffloadedJobs
scp FileSearch.sh rshukla@134.197.40.180:/home/rshukla/OffloadedJobs

ssh  rshukla@134.197.40.180 "cd OffloadedJobs && chmod +x FileSearch.sh && ./FileSearch.sh > outFileFileSearch && > outFileFileSearch"

scp rshukla@134.197.40.180:/home/rshukla/OffloadedJobs/outFileFileSearch ~/ClientServerCode


