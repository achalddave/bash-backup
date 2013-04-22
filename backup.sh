SRCDIR=src
DSTDIR=dst

# copy recursively (-r) updated (-u) files, preserve (-p) attributes if
# possible
$(echo "cp -R -u -p $SRCDIR/* $DSTDIR")

for file in $(find $DSTDIR/*) ; do
    [ ! -e "$SRCDIR/${file#*/}" ] && echo "Removing $file" && rm $file
done
