
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"

install.packages("downloader")
library(downloader)

# create a data folder

setwd("C:/SISBID_2015/module1mkh2/data")

download(fileUrl,
         destfile="cameras.csv")
list.files()
dateDownloaded <- date()
dateDownloaded

