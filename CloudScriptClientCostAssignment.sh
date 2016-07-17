scp -i ~/AmazonKey/rajshukla.pem ~/Softwares/dlib-18.18/examples/max_cost_assignment_ex.cpp  ubuntu@ec2-54-215-237-19.us-west-1.compute.amazonaws.com:~/Softwares/dlib-18.18/examples
scp -i ~/AmazonKey/rajshukla.pem CostAssignment.sh  ubuntu@ec2-54-215-237-19.us-west-1.compute.amazonaws.com:~/OffloadedJobs

ssh -i ~/AmazonKey/rajshukla.pem   ubuntu@ec2-54-215-237-19.us-west-1.compute.amazonaws.com "cd OffloadedJobs && chmod +x CostAssignment.sh && ./CostAssignment.sh"

scp -i ~/AmazonKey/rajshukla.pem  ubuntu@ec2-54-215-237-19.us-west-1.compute.amazonaws.com:~/Softwares/dlib-18.18/examples/outFileCostAssignment ~/ClientServerCode 


