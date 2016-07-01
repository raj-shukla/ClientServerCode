cd ~/Softwares/dlib-18.18/examples
unzip video_frames.zip
g++ -O3 -I.. ../dlib/all/source.cpp -lpthread -lX11 -ljpeg -DDLIB_JPEG_SUPPORT -o videoTrack.out video_tracking_ex.cpp
./videoTrack.out video_frames > outFileVideoTrack
echo Video Track Complete > outFileVideoTrack
rm videoTrack.out
rm -r video_frames
