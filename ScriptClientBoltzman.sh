scp boltzman.c rshukla@134.197.41.208:/home/rshukla/OffloadedJobs
scp Boltzman.sh rshukla@134.197.41.208:/home/rshukla/OffloadedJobs

ssh  rshukla@134.197.41.208 "cd OffloadedJobs && chmod +x Boltzman.sh && ./Boltzman.sh"

scp rshukla@134.197.41.208:/home/rshukla/OffloadedJobs/outFileBoltzman ~/ClientServerCode


