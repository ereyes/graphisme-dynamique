#!/bin/sh
adress="$*"

cd $adress
cat entete1.txt var4.txt var2.txt var.txt var3.txt foot.txt > union.html


cd $adress
ftp "ftp://"databaz":"MOTDEPASSE"@"ftp.ADRESSE"/" 21  << EOF
put union.html

exit
EOF

