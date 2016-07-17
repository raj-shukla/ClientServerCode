scp ~/Softwares/dlib-18.18/examples/svm_rank_ex.cpp rshukla@10.42.43.1:/home/rshukla/Softwares/dlib-18.18/examples
scp SvmRank.sh rshukla@10.42.43.1:/home/rshukla/OffloadedJobs

ssh  rshukla@10.42.43.1 "cd OffloadedJobs && chmod +x SvmRank.sh && /usr/bin/time -a  -o StatisticsSvmRank.csv -f "%S","%U",%P,%F,%R ./SvmRank.sh"

scp rshukla@10.42.43.1:/home/rshukla/Softwares/dlib-18.18/examples/outFileSvmRank ~/ClientServerCode


