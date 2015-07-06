
# lab example for downloading baltimore traffic camera data

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

# i created data2 folder
setwd("C:/SISBID_2015/module1mkh2")

download(fileUrl,
         destfile="./data2/cameras.csv")
list.files("./data2")
dateDownloaded <- date()
dateDownloaded

setwd("C:/SISBID_2015/module1mkh2/data")

# reading the data
# 2 options given below

cameras = read.table("cameras.csv",
                     header=T,
                     sep=",")

cameras2 = read.csv("cameras.csv")

head(cameras)



