source ./config
fop="chown  symlink (for a file) "
rm -rf $MNT_PT/*
mkdir $MNT_PT/d1/d2/d3/d4/d5/ -p
echo "file contents" > $MNT_PT/d1/d2/d3/d4/d5/file.txt
ln -s $MNT_PT/d1/d2/d3/d4/d5/file.txt $MNT_PT/d1/d2/d3/d4/d5/sln.txt
echo "Before $fop"
show_backend
$XTIME_PATH/xtime.rb $MNT_PT_NEG_PID
echo "AFTER $fop"
chown  lakshmipathi:root $MNT_PT/d1/d2/d3/d4/d5/sln.txt
$XTIME_PATH/xtime.rb $MNT_PT_NEG_PID
show_backend
