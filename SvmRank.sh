cd ~/Softwares/dlib-18.18/examples
g++ -O3 -I.. -o svmrank.out svm_rank_ex.cpp
./svmrank.out > outFileSvmRank
rm svmrank.out
