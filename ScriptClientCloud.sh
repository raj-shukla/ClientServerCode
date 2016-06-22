scp -i ~/AmazonKey/rajshukla.pem /home/raj/ClientServerCode/Hello.c ec2-user@ec2-54-187-146-120.us-west-2.compute.amazonaws.com:~/OffloadedJobs
scp -i ~/AmazonKey/rajshukla.pem /home/raj/ClientServerCode/ScriptServer.sh ec2-user@ec2-54-187-146-120.us-west-2.compute.amazonaws.com:~/OffloadedJobs

ssh -i ~/AmazonKey/rajshukla.pem  ec2-user@ec2-54-187-146-120.us-west-2.compute.amazonaws.com "cd OffloadedJobs && chmod +x ScriptServer.sh && ./ScriptServer.sh"



scp -i ~/AmazonKey/rajshukla.pem ec2-user@ec2-54-187-146-120.us-west-2.compute.amazonaws.com:~/OffloadedJobs/outFile ~/ClientServerCode
