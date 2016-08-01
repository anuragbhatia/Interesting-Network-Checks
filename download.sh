#!/binhash



# Download latest table from RRC01 - London

wget http://data.ris.ripe.net/rrc01/latest-bview.gz
bgpdump -M latest-bview.gz > rrc01.txt
rm latest-bview.gz
