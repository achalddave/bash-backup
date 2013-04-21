SRCDIR=src
DSTDIR=dst

# backupdir(srcdir, dstdir)
function backupdir {
echo "Source files in $1: "
for f in "$1/*"
do
    echo $f
done

echo "Destination files in $2: "
for f in "$2/*"
do
    echo $f
done
}

backupdir $SRCDIR $DSTDIR
