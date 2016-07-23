scp ~/Softwares/dlib-18.18/examples/bayes_net_ex.cpp rshukla@134.197.40.180:/home/rshukla/Softwares/dlib-18.18/examples
scp BayesNetwork.sh rshukla@134.197.40.180:/home/rshukla/OffloadedJobs

ssh  rshukla@134.197.40.180 "cd OffloadedJobs && chmod +x BayesNetwork.sh && /usr/bin/time -a  -o StatisticsBayesNetwork.csv -f "%S","%U",%P,%F,%R ./BayesNetwork.sh"

scp rshukla@134.197.40.180:/home/rshukla/Softwares/dlib-18.18/examples/outFileBayesNetwork ~/ClientServerCode


