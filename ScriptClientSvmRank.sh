scp ~/Softwares/dlib-18.18/examples/svm_rank_ex.cpp rshukla@134.197.40.180:/home/rshukla/Softwares/dlib-18.18/examples
scp SvmRank.sh rshukla@134.197.40.180:/home/rshukla/OffloadedJobs

ssh  rshukla@134.197.40.180 "cd OffloadedJobs && chmod +x SvmRank.sh && /usr/bin/time -a  -o StatisticsSvmRank.csv -f "%S","%U",%P,%F,%R ./SvmRank.sh"

scp rshukla@134.197.40.180:/home/rshukla/Softwares/dlib-18.18/examples/outFileSvmRank ~/ClientServerCode


