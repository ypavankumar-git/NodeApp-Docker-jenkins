#build mysql image
cd mysql
docker build . -t mysql

#build node app image
cd ../routes
docker build . -t nodeApp