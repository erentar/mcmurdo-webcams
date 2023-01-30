#!/bin/bash
currentDate=$(date -u +%FT%H%MZ)
wget https://www.usap.gov/videoclipsandmaps/SouthPoleWebcam/$(wget https://www.usap.gov/components/webcams.cfc\?method\=outputCurrentCamImage\&cameraLocation\=McMurdo\&camera\=mobileCam -O- | grep -Po ".*(?=\?)") -O "McMurdo Pier/McMurdo_Pier_$currentDate.jpg"
wget https://www.usap.gov/videoclipsandmaps/SouthPoleWebcam/$(wget https://www.usap.gov/components/webcams.cfc\?method\=outputCurrentCamImage\&cameraLocation\=McMurdo\&camera\=aimsCam -O- | grep -Po ".*(?=\?)") -O "ITC-Prime Construction/ITC-Prime_construction_$currentDate.jpg"
wget https://www.usap.gov/videoclipsandmaps/SouthPoleWebcam/$(wget https://www.usap.gov/components/webcams.cfc\?method\=outputCurrentCamImage\&cameraLocation\=McMurdo\&camera\=boreSite -O- | grep -Po ".*(?=\?)") -O "Observation Hill/Observation_Hill_$currentDate.jpg"
wget https://www.usap.gov/videoclipsandmaps/SouthPoleWebcam/$(wget https://www.usap.gov/components/webcams.cfc\?method\=outputCurrentCamImage\&cameraLocation\=McMurdo\&camera\=arrivalHeights -O- | grep -Po ".*(?=\?)") -O "Arrival Heights/Arrival_Heights_$currentDate.jpg"
