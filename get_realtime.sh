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
	
	for month in {01,02,03,04,05,06,07,08,09,10,11,12}; do
	for day in {01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31}; do

				wget ftp://ldas.ncep.noaa.gov/nldas2/realtime/$model/$year/$year$month$day/*.grb
				
done # day
done # month
done # year
done # model


