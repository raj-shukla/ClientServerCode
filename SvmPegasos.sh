cd ~/Softwares/dlib-18.18/examples
g++ -O3 -I..  -o pegasos.out svm_pegasos_ex.cpp
./pegasos.out > outFileSvmPegasos
rm pegasos.out
