scp ~/Softwares/dlib-18.18/examples/svm_pegasos_ex.cpp rshukla@134.197.41.208:/home/rshukla/Softwares/dlib-18.18/examples
scp SvmPegasos.sh rshukla@134.197.41.208:/home/rshukla/OffloadedJobs

ssh  rshukla@134.197.41.208 "cd OffloadedJobs && chmod +x SvmPegasos.sh && ./SvmPegasos.sh"

scp rshukla@134.197.41.208:/home/rshukla/Softwares/dlib-18.18/examples/outFileSvmPegasos ~/ClientServerCode


