scp ~/Softwares/dlib-18.18/examples/face_detection_ex.cpp rshukla@134.197.40.180:/home/rshukla/Softwares/dlib-18.18/examples
scp faceSamples.zip rshukla@134.197.40.180:/home/rshukla/Softwares/dlib-18.18/examples
scp FaceDetector.sh rshukla@134.197.40.180:/home/rshukla/OffloadedJobs

ssh  rshukla@134.197.40.180 "cd OffloadedJobs && chmod +x FaceDetector.sh && ./FaceDetector.sh"

scp rshukla@134.197.40.180:/home/rshukla/Softwares/dlib-18.18/examples/outFileFaceDetector ~/ClientServerCode


