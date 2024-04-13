#! /bin/bash

echo Starting 4 slideshows.

(./slideshow.bat 00) > /dev/null & sleep 0.5
(./slideshow.bat 10) > /dev/null & sleep 0.5
(./slideshow.bat 01) > /dev/null & sleep 0.5
(./slideshow.bat 11) > /dev/null & sleep 2

exit 0
