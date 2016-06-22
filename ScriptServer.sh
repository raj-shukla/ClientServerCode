gcc Hello.c -o hello.out -lm
./hello.out > outFile
rm *.c
rm *.out
#scp outFile raj@10.42.43.2:~/OffloadingClient
