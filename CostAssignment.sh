cd ~/Softwares/dlib-18.18/examples
g++ -O3 -I..  -lpthread -lX11 -o CostAssignment.out max_cost_assignment_ex.cpp
./CostAssignment.out > outFileCostAssignment
rm CostAssignment.out
