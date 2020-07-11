#!/bin/sh

#   Name:    Hamad Nasir
#   Roll No: 120312
#   Section: BSCS-6C
#   Speech and Image Processing Lab 3

read -p "Enter the name of .mp3 or .wav file with extension : "  name

echo Segmenting the file in to segments of 10 seconds.....

#  Gives within one command
#     .Sample rate of 16 kHz (-r 16000),
#     .one channel (mono) (-c 1),
#     .16 bits bit depth (-b 16).
#     .Signed bits (-e signed-integer)
#     .Trim in to new files containing segments of 10 seconds (trim 0 10 : newfile : restart)

echo $(sox $name -e signed-integer -r 16000 -c 1 -b 16 part.wav trim 0 10 : newfile : restart)
echo Successfully Segmented! &&
echo Following is the format of files created: &
echo $(mediainfo part001.wav) 
