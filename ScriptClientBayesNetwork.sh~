scp ~/Softwares/dlib-18.18/examples/bayes_net_ex.cpp rshukla@10.42.43.1:/home/rshukla/Softwares/dlib-18.18/examples
scp BayesNetwork.sh rshukla@10.42.43.1:/home/rshukla/OffloadedJobs

ssh  rshukla@10.42.43.1 "cd OffloadedJobs && chmod +x BayesNetwork.sh && /usr/bin/time -a  -o StatisticsBayesNetwork.csv -f "%S","%U",%P,%F,%R ./BayesNetwork.sh"

scp rshukla@10.42.43.1:/home/rshukla/Softwares/dlib-18.18/examples/outFileBayesNetwork ~/ClientServerCode


