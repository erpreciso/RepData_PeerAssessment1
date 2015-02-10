setwd("/home/erpreciso/Documents/school/repdata-prj1")
if (!file.exists("raw")){
    dir.create("raw")
}
inputUrl <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip"
temp <- tempfile()
download.file(inputUrl, temp, method="curl")
data <- read.csv(unz(temp, "activity.csv"))
unlink(temp)