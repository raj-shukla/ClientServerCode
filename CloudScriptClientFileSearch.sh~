scp -i ~/AmazonKey/rajshukla.pem opencv-3.1.0.zip  ubuntu@ec2-54-215-237-19.us-west-1.compute.amazonaws.com:~/OffloadedJobs
scp -i ~/AmazonKey/rajshukla.pem FileSearch.sh  ubuntu@ec2-54-215-237-19.us-west-1.compute.amazonaws.com:~/OffloadedJobs 

ssh -i ~/AmazonKey/rajshukla.pem   ubuntu@ec2-54-215-237-19.us-west-1.compute.amazonaws.com "cd OffloadedJobs && chmod +x FileSearch.sh && ./FileSearch.sh > outFileFileSearch && > outFileFileSearch"

scp -i ~/AmazonKey/rajshukla.pem  ubuntu@ec2-54-215-237-19.us-west-1.compute.amazonaws.com:~/OffloadedJobs/outFileFileSearch ~/ClientServerCode


