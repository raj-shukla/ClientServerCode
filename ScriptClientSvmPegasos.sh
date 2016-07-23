scp ~/Softwares/dlib-18.18/examples/svm_pegasos_ex.cpp rshukla@134.197.40.180:/home/rshukla/Softwares/dlib-18.18/examples
scp SvmPegasos.sh rshukla@134.197.40.180:/home/rshukla/OffloadedJobs

ssh  rshukla@134.197.40.180 "cd OffloadedJobs && chmod +x SvmPegasos.sh && /usr/bin/time -a  -o StatisticsSvmPegasos.csv -f "%S","%U",%P,%F,%R ./SvmPegasos.sh"

scp rshukla@134.197.40.180:/home/rshukla/Softwares/dlib-18.18/examples/outFileSvmPegasos ~/ClientServerCode


