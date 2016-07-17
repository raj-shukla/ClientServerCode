scp -i ~/AmazonKey/rajshukla.pem kmean.c  ubuntu@ec2-54-215-237-19.us-west-1.compute.amazonaws.com:~/OffloadedJobs
scp -i ~/AmazonKey/rajshukla.pem Kmean.sh  ubuntu@ec2-54-215-237-19.us-west-1.compute.amazonaws.com:~/OffloadedJobs

ssh -i ~/AmazonKey/rajshukla.pem   ubuntu@ec2-54-215-237-19.us-west-1.compute.amazonaws.com "cd OffloadedJobs && chmod +x Kmean.sh && ./Kmean.sh"

scp -i ~/AmazonKey/rajshukla.pem  ubuntu@ec2-54-215-237-19.us-west-1.compute.amazonaws.com:~/OffloadedJobs/outFileKmean ~/ClientServerCode


