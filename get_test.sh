#!/bin/bash

pth='/Volumes/hydroData/US_Data/NLDAS2_Model'


# loop through models

declare -a models=('mosaic' 'noah' 'sac' 'vic')
for model in "${models[@]}"
do

	mkdir -p $pth/$model # create model directory
	cd $pth/$model 
	
# loop through years
	for year in {2009..2013}
	do 
	mkdir -p $pth/$model/$year
	cd $pth/$model/$year
	
	for month in {01,02}; do
	for day in {07,08}; do

				wget ftp://ldas.ncep.noaa.gov/nldas2/realtime/$model/$year/$year$month$day/*.grb
				
done # day
done # month
done # year
done # model