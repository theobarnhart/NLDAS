pth='/Volumes/hydroData/US_Data/NLDAS2_Model/vic'


# loop through models

cd $pth/ 
	
# loop through years
	for year in {2011..2013}
	do 
	mkdir -p $pth/$year
	cd $pth/$year
	
	for month in {01,02,03,04,05,06,07,08,09,10,11,12}; do
	for day in {01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31}; do

				wget ftp://ldas.ncep.noaa.gov/nldas2/realtime/vic/$year/$year$month$day/*.grb
				
done # day
done # month
done # year