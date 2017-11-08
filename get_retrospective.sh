for year in {2001..2008}
do
	
	wget ftp://ldas.ncep.noaa.gov/nldas2/retrospective/mosaic/mosaic.$year.tar.gz
	
	wget ftp://ldas.ncep.noaa.gov/nldas2/retrospective/noah/noah.$year.tar.gz
	
	wget ftp://ldas.ncep.noaa.gov/nldas2/retrospective/sac/sac.$year.tar.gz
	
	wget ftp://ldas.ncep.noaa.gov/nldas2/retrospective/vic/vic.$year.tar.gz
	
done