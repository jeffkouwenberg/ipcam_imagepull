#!/bin/bash

photo_filename="/path/where/you/want/to/store/image/photo_`date +%y%m%d_%H%M%S`.jpg"

wget --user optional_user --password optional_pass http://<ip>:<port>/photo.jpg --output-document $photo_filename

# If the image is upside down, can rotate it
convert "$photo_filename" -rotate 180 $photo_filename
