scp ~/Softwares/dlib-18.18/examples/video_tracking_ex.cpp rshukla@134.197.40.180:/home/rshukla/Softwares/dlib-18.18/examples
scp video_frames.zip rshukla@134.197.40.180:/home/rshukla/Softwares/dlib-18.18/examples
scp VideoTrack.sh rshukla@134.197.40.180:/home/rshukla/OffloadedJobs

ssh  rshukla@134.197.40.180 "cd OffloadedJobs && chmod +x VideoTrack.sh && ./VideoTrack.sh"

scp rshukla@134.197.40.180:/home/rshukla/Softwares/dlib-18.18/examples/outFileVideoTrack ~/ClientServerCode


