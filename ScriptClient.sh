scp Hello.c rshukla@10.42.43.1:/home/rshukla/OffloadedJobs
scp ScriptServer.sh rshukla@10.42.43.1:/home/rshukla/OffloadedJobs

ssh  rshukla@10.42.43.1 "cd OffloadedJobs && chmod +x ScriptServer.sh && ./ScriptServer.sh"

scp rshukla@10.42.43.1:/home/rshukla/OffloadedJobs/outFile ~/ClientServerCode


