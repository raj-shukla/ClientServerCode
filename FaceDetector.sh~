cd ~/Softwares/dlib-18.18/examples
unzip faceSamples.zip
g++ -O3 -I.. ../dlib/all/source.cpp -lpthread -lX11 -ljpeg -DDLIB_JPEG_SUPPORT -o faceDetector.out face_detection_ex.cpp 
./faceDetector.out faceSamples/*.jpg > outFileFaceDetector
echo "Face Detection Complete" 
rm -r faceSamples
rm faceDetector.out
