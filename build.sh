IMAGE="rillrate/play:0.34.0-rc.4"

docker build -t $IMAGE .

docker run -it --rm -p 9090:9090 $IMAGE
