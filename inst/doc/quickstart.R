## ---- eval=FALSE, results="hide"----------------------------------------------
#  remotes::install_github("opensdmx/rsdmx")

## ----eval = FALSE,results="hide"----------------------------------------------
#  library(rsdmx)

## ----eval = FALSE,results="hide"----------------------------------------------
#  myUrl <- "https://stats.oecd.org/restsdmx/sdmx.ashx/GetData/MIG/TOT../OECD?startTime=2000&endTime=2011"
#  dataset <- readSDMX(myUrl)
#  stats <- as.data.frame(dataset)

## ----eval = FALSE,results="hide"----------------------------------------------
#  providers <- getSDMXServiceProviders();
#  as.data.frame(providers)

## ---- eval = FALSE,message = FALSE,results="hide"-----------------------------
#  sdmx <- readSDMX(providerId = "OECD", resource = "data", flowRef = "MIG",
#                  key = list("TOT", NULL, NULL), start = 2010, end = 2011)
#  df <- as.data.frame(sdmx)
#  head(df)

## ---- eval = FALSE,message = FALSE,results="hide"-----------------------------
#  sdmx <- readSDMX(providerId = "OECD", resource = "data", flowRef = "MIG",
#                  key = list("TOT", NULL, NULL), start = 2010, end = 2011,
#                  dsd = TRUE)
#  df <- as.data.frame(sdmx, labels = TRUE)
#  head(df)

## ---- eval = FALSE,message = FALSE,results="hide"-----------------------------
#  #data without DSD
#  sdmx.data <- readSDMX(providerId = "OECD", resource = "data", flowRef = "MIG",
#                  key = list("TOT", NULL, NULL), start = 2010, end = 2011)
#  
#  #DSD
#  sdmx.dsd <- readSDMX(providerId = "OECD", resource = "datastructure", resourceId = "MIG")
#  
#  #associate data and dsd
#  sdmx.data <- setDSD(sdmx.data, sdmx.dsd)

## ---- eval = FALSE------------------------------------------------------------
#  #bulk download from Eurostat
#  tf <- tempfile(tmpdir = tdir <- tempdir()) #temp file and folder
#  download.file("https://ec.europa.eu/eurostat/estat-navtree-portlet-prod/BulkDownloadListing?sort=1&file=data%2Frd_e_gerdsc.sdmx.zip", tf)
#  sdmx_files <- unzip(tf, exdir = tdir)
#  
#  #read local SDMX (set isURL = FALSE)
#  sdmx <- readSDMX(sdmx_files[2], isURL = FALSE)
#  stats <- as.data.frame(sdmx)
#  

## ----eval = FALSE,results="hide"----------------------------------------------
#  dsdUrl <- "https://stats.oecd.org/restsdmx/sdmx.ashx/GetDataStructure/TABLE1"
#  dsd <- readSDMX(dsdUrl)

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

## ---- eval = FALSE, results="hide"--------------------------------------------
#  saveSDMX(sdmx, "tmp.RData")

## ---- eval = FALSE, results="hide"--------------------------------------------
#  sdmx <- readSDMX("tmp.RData", isRData = TRUE)

