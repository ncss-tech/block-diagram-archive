## Extract and format block diagram data for series-name indexing
## 2017-07-06
## D.E. Beaudette


library(plyr)
library(stringr)

# source data (verified July 2017)
# http://www.nrcs.usda.gov/Internet/FSE_DOCUMENTS/nrcs142p2_052891.xls

# trim-down and add column names in spreadsheet software
# 2017: file names are now links
x <- read.csv('Metadata-diagrams.csv', as.is=TRUE, stringsAsFactors=FALSE)

# replace semi-colon with comma
x$series <- str_replace_all(x$series, ";", ",")

# strip URL from file names
# 2017: http://www.nrcs.usda.gov/Internet/NRCS_DIAGRAMS/graphics/AK-2011-05-27-01.tif
x$file <- str_replace_all(x$file, 'http://www.nrcs.usda.gov/Internet/NRCS_DIAGRAMS/graphics/', '')

## TODO: figure out why these are missing series names... maybe we can add them
idx <- which(x$series == '')
write.csv(x[idx, ], file='missing-series-names.csv', row.names=FALSE)

# remove those records without a soil series
x <- x[-idx, ]


# split soil series list by file
x.soils <- strsplit(x$series, ',')

# trim white space from soil series names
x.soils.trimmed <- llply(x.soils, .fun=function(i) {
  sapply(i, function(j) gsub('^[[:space:]]+', '', j))
  })

# init empty list, and fill will dataframes containing long-formatted version
l <- list()
for(i in seq_along(1:nrow(x))) {
    s <- x.soils.trimmed[[i]]
    d <- data.frame(file=x$file[i], series=s)
l[[i]] <- d
}

# convert to data frame, and enforce uniqueness
x.long <- ldply(l)
x.long.unique <- unique.data.frame(x.long)

# write main LU table, indexed by series name
write.csv(x.long.unique, file='block_diagram_lu_table.csv', row.names=FALSE)

# retain metadata table, indexed by file name
write.csv(x[, c('file', 'survey_area', 'state', 'issue_date', 'caption')], file='block_diagram_metadata.csv', row.names=FALSE)
