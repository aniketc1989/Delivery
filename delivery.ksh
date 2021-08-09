rm -f /Users/aniketchatterjee/git/personal/Delivery/delivery.csv
curl --silent https://www1.nseindia.com/products/content/sec_bhavdata_full.csv|head -1 > /Users/aniketchatterjee/git/personal/Delivery/delivery.csv

for i in `cat /Users/aniketchatterjee/git/personal/Delivery/symbol.txt`
do
curl --silent https://www1.nseindia.com/products/content/sec_bhavdata_full.csv|grep "$i,"|grep EQ >> /Users/aniketchatterjee/git/personal/Delivery/delivery.csv
done
