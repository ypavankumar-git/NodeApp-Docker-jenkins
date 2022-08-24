#build mysql image
cd mysql
docker build . -t mysql

#build node app image
cd nodeApp
docker build . -t nodeApp