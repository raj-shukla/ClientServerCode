gcc boltzman.c -o boltzman.out -lm
./boltzman.out > outFileBoltzman
rm boltzman.c
rm boltzman.out
#scp outFile raj@10.42.43.2:~/OffloadingClient
