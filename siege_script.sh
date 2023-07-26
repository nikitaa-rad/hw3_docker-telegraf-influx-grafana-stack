siege http://localhost/products/search -c 10 -t 1m
sleep 60
siege http://localhost/products/search -c 100 -t 1m
sleep 60
siege http://localhost/products/search -c 1000 -t 1m
sleep 60
siege http://localhost/products/search -c 2000 -t 1m
