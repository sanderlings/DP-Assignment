library(slidify)

# Creating the slidify directory and files
setwd("C:/Users/Joanna/Documents/Z-Study/Coursera/DS9-DP/DP-Assignment")
author("Estimating MPG")

# To publish to rpubs
# 1. Create a .RProfile in where the index.html locates
# 2. Add these lines to the .RProfile and save the file
#        options(rpubs.upload.method = "internal")
#        options(RCurlOptions=list(verbose=FALSE, capath=system.file("CurlSSL", "cacert.pem", package="RCurl"), ssl.verifypeer=FALSE))
# 3. In RStudio, make sure package (a) bitop, (b) rmarkdown, (c) RCurl, (d) slidify are checked
# 4. set the directory (below)
# 5. publish using the command (below)

setwd("C:/Users/Joanna/Documents/Z-Study/Coursera/DS9-DP/DP-Assignment/EstimatingMPG")
publish(title = 'Estimating MPG', 'index.html', host = 'rpubs')