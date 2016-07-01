cd ~/Softwares/dlib-18.18/examples
g++ -O3 -I.. -o stats.out running_stats_ex.cpp
./stats.out > outFileRunningStatistics
rm stats.out
