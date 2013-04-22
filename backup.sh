SRCDIR=$1
DSTDIR=$2

# copy recursively (-r) updated (-u) files, preserve (-p) attributes if
# possible
cp -R -u -p "$SRCDIR/*" "$DSTDIR/*"

echo "Extra files: "
for file in $(find $DSTDIR/*) ; do
    if [ ! -e "$SRCDIR/${file#*/}" ] ; then
        echo $file
    fi
done
