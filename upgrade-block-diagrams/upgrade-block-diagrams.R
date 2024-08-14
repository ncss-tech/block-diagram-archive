library(aqp)
library(soilDB)
library(svglite)


## standard patterns:
# arbitrary SVG source is nice, but requires svgparser pkg
# select 10-20 reasonable patterns and store in .rda
# https://davenquinn.com/projects/geologic-patterns/
# 
# some are too large to be used by grid (?)

pat.svg <- 'https://raw.githubusercontent.com/davenquinn/geologic-patterns/master/assets/svg/606.svg'

# pat.svg <- 'https://raw.githubusercontent.com/davenquinn/geologic-patterns/master/assets/svg/102-K.svg'




# IL-2010-08-31-14 | Cumberland County - 2002
# Typical pattern of soils and parent material in the Sabina-Miami-Xenia association (Soil Survey of Cumberland County, Illinois; 2002).

s <- c('drummer', 'miami', 'sabina', 'xenia', 'orion', 'comfrey')
o <- fetchOSD(s)


svglite(filename = 'e:/temp/drummer-sketches.svg', width = 11, height = 8)

par(mar = c(0, 0, 0, 0))
plotSPC(o, lwd = 3, name.style = 'center-center', cex.names = 1.5, depth.axis = FALSE, hz.depths = TRUE, hz.depths.offset = 0.1, hz.distinctness.offset = 'hzd')

dev.off()
