scp ~/Softwares/dlib-18.18/examples/svm_rank_ex.cpp rshukla@134.197.41.208:/home/rshukla/Softwares/dlib-18.18/examples
scp SvmRank.sh rshukla@134.197.41.208:/home/rshukla/OffloadedJobs

ssh  rshukla@134.197.41.208 "cd OffloadedJobs && chmod +x SvmRank.sh && ./SvmRank.sh"

scp rshukla@134.197.41.208:/home/rshukla/Softwares/dlib-18.18/examples/outFileSvmRank ~/ClientServerCode


