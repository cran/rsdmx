## ----eval=FALSE, results="hide"-----------------------------------------------
#  remotes::install_github("opensdmx/rsdmx")

## ----eval = TRUE,results="hide"-----------------------------------------------
library(rsdmx)

## ----echo = FALSE-------------------------------------------------------------
myUrl <- "https://sdmx.oecd.org/public/rest/data/DSD_PRICES@DF_PRICES_N_CP01/GRC......./all/?startPeriod=2020&endPeriod=2020"
dataset <- readSDMX(myUrl)
stats <- as.data.frame(dataset) 

## ----eval = FALSE,results="hide"----------------------------------------------
#  providers <- getSDMXServiceProviders();
#  as.data.frame(providers)

## ----message = FALSE----------------------------------------------------------
sdmx <- readSDMX(providerId = "OECD", resource = "data", flowRef = "DSD_PRICES@DF_PRICES_N_CP01",
                 key = list("GRC", NULL, NULL, NULL, NULL, NULL, NULL, NULL), start = 2020, end = 2020)
df <- as.data.frame(sdmx)
head(df)

## ----message = FALSE----------------------------------------------------------
sdmx <- readSDMX(providerId = "OECD", resource = "data", flowRef = "DSD_PRICES@DF_PRICES_N_CP01",
                 key = list("GRC", NULL, NULL, NULL, NULL, NULL, NULL, NULL), start = 2020, end = 2020,
                 dsd = TRUE)
df <- as.data.frame(sdmx, labels = TRUE)
head(df)

## ----eval = FALSE,message = FALSE,results="hide"------------------------------
#  #data without DSD
#  sdmx.data <- readSDMX(providerId = "OECD", resource = "data", flowRef = "DSD_PRICES@DF_PRICES_N_CP01",
#                   key = list("GRC", NULL, NULL, NULL, NULL, NULL, NULL, NULL), start = 2020, end = 2020)
#  
#  #DSD
#  sdmx.dsd <- readSDMX(providerId = "OECD", resource = "datastructure", resourceId = "DSD_PRICES")
#  
#  #associate data and dsd
#  sdmx.data <- setDSD(sdmx.data, sdmx.dsd)

## ----eval = FALSE-------------------------------------------------------------
#  #bulk download from Eurostat
#  tf <- tempfile(tmpdir = tdir <- tempdir()) #temp file and folder
#  download.file("https://ec.europa.eu/eurostat/estat-navtree-portlet-prod/BulkDownloadListing?sort=1&file=data%2Frd_e_gerdsc.sdmx.zip", tf)
#  sdmx_files <- unzip(tf, exdir = tdir)
#  
#  #read local SDMX (set isURL = FALSE)
#  sdmx <- readSDMX(sdmx_files[2], isURL = FALSE)
#  stats <- as.data.frame(sdmx)
#  

## ----echo = FALSE-------------------------------------------------------------
dsdUrl <- "https://sdmx.oecd.org/public/rest/datastructure/all/DSD_PRICES/latest/?references=children"
dsd <- readSDMX(dsdUrl)

## ----eval = FALSE,results="hide"----------------------------------------------
#  #get codelists from DSD
#  cls <- slot(dsd, "codelists")
#  
#  #get list of codelists
#  codelists <- sapply(slot(cls, "codelists"), function(x) slot(x, "id"))
#  
#  #get a codelist
#  codelist <- as.data.frame(slot(dsd, "codelists"), codelistId = "CL_TABLE1_FLOWS")

## ----eval = FALSE,results="hide"----------------------------------------------
#  #get concepts from DSD
#  concepts <- as.data.frame(slot(dsd, "concepts"))

## ----eval = FALSE, results="hide"---------------------------------------------
#  saveSDMX(sdmx, "tmp.RData")

## ----eval = FALSE, results="hide"---------------------------------------------
#  sdmx <- readSDMX("tmp.RData", isRData = TRUE)

