scp ~/Softwares/dlib-18.18/examples/max_cost_assignment_ex.cpp rshukla@134.197.41.208:/home/rshukla/Softwares/dlib-18.18/examples
scp CostAssignment.sh rshukla@134.197.41.208:/home/rshukla/OffloadedJobs

ssh  rshukla@134.197.41.208 "cd OffloadedJobs && chmod +x CostAssignment.sh && ./CostAssignment.sh"

scp rshukla@134.197.41.208:/home/rshukla/OffloadedJobs/outFileBoltzman ~/ClientServerCode


