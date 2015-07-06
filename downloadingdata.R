
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

# look at readr

install.packages("readr")
library(readr)
cameras3 <- read_csv("cameras.csv")

system.time(read.csv("cameras.csv"))
system.time(read_csv("cameras.csv"))

dat <- matrix(rnorm(100*1000),nrow=1000)
write.csv(dat,file="dat.csv")
system.time(read.csv("dat.csv"))
system.time(read_csv("dat.csv"))

# > system.time(read.csv("dat.csv"))
# user  system elapsed 
# 0.15    0.00    0.14 
# > system.time(read_csv("dat.csv"))
# user  system elapsed 
# 0.03    0.00    0.03 

fileUrl2 <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD"

download(fileUrl2,
         destfile="cameras.xlsx")
list.files()
dateDownloaded <- date()
dateDownloaded

# downloaded manually
# Baltimore_Fixed_Speed_Cameras.xlsx

install.packages("readxl")
library(readxl)
cameras4 <- read_excel("Baltimore_Fixed_Speed_Cameras.xlsx", sheet=1)






