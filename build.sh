IMAGE="rillrate/play:0.21.0"

docker build -t $IMAGE .

docker run -it --rm -p 9090:9090 $IMAGE
