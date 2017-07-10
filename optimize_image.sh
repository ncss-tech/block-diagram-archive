## Convert / optimize a single image
## 2017-07-06
## D.E. Beaudette

# this is a tiff file
# file extension is part of argument
in=$1

# output dir
out=$2

# remove file extension from input
f=`basename $in .tif`

# convert to PNG and optimize
convert -quiet ${in} png: | pngquant --output ${out}/${f}.png 16 -

