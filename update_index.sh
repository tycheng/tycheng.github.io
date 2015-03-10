#/bin/sh

rm ./js/index.json

curl localhost:4000/js/index.json > ./js/index.json
