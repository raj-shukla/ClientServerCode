scp ~/Softwares/dlib-18.18/examples/max_cost_assignment_ex.cpp rshukla@134.197.40.180:/home/rshukla/Softwares/dlib-18.18/examples
scp CostAssignment.sh rshukla@134.197.40.180:/home/rshukla/OffloadedJobs

ssh  rshukla@134.197.40.180 "cd OffloadedJobs && chmod +x CostAssignment.sh && /usr/bin/time -a  -o StatisticsCostAssignment.csv -f "%S","%U",%P,%F,%R  ./CostAssignment.sh"

scp rshukla@134.197.40.180:/home/rshukla/Softwares/dlib-18.18/examples/outFileCostAssignment ~/ClientServerCode


