## ---- eval=FALSE---------------------------------------------------------
#  devtools::install_github("opensdmx/rsdmx")

## ------------------------------------------------------------------------
library(rsdmx)

## ------------------------------------------------------------------------
myUrl <- "http://stats.oecd.org/restsdmx/sdmx.ashx/GetData/MIG/TOT../OECD?startTime=2000&endTime=2011"
dataset <- readSDMX(myUrl)
stats <- as.data.frame(dataset)

## ---- echo = FALSE-------------------------------------------------------
providers <- getSDMXServiceProviders();
sapply(providers, slot, "agencyId")

## ---- echo = FALSE-------------------------------------------------------
sdmx <- readSDMX(agencyId = "OECD", operation = "GetData", key = "MIG",
                filter = list("TOT", NULL, NULL), start = 2010, end = 2011)
df <- as.data.frame(sdmx)
head(df)

## ------------------------------------------------------------------------
#bulk download from Eurostat
tf <- tempfile(tmpdir = tdir <- tempdir()) #temp file and folder
download.file("http://ec.europa.eu/eurostat/estat-navtree-portlet-prod/BulkDownloadListing?sort=1&file=data%2Frd_e_gerdsc.sdmx.zip", tf)
sdmx_files <- unzip(tf, exdir = tdir)

#read local SDMX (set isURL = FALSE)
sdmx <- readSDMX(sdmx_files[2], isURL = FALSE)
stats <- as.data.frame(sdmx)


## ------------------------------------------------------------------------
csUrl <- "http://data.fao.org/sdmx/registry/conceptscheme/FAO/ALL/LATEST/?detail=full&references=none&version=2.1"
csobj <- readSDMX(csUrl)
csdf <- as.data.frame(csobj)

## ------------------------------------------------------------------------
clUrl <- "http://data.fao.org/sdmx/registry/codelist/FAO/CL_FAO_MAJOR_AREA/0.1"
clobj <- readSDMX(clUrl)
cldf <- as.data.frame(clobj)

## ------------------------------------------------------------------------
dsdUrl <- "http://stats.oecd.org/restsdmx/sdmx.ashx/GetDataStructure/TABLE1"
dsd <- readSDMX(dsdUrl)

## ------------------------------------------------------------------------
#get codelists from DSD
cls <- slot(dsd, "codelists")

#get list of codelists
codelists <- sapply(slot(cls, "codelists"), function(x) slot(x, "id"))

#get a codelist
codelist <- as.data.frame(slot(dsd, "codelists"), codelistId = "CL_TABLE1_FLOWS") 

## ------------------------------------------------------------------------
#get concepts from DSD
concepts <- as.data.frame(slot(dsd, "concepts"))

