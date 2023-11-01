
docker build -t bhupesh0215/multi-client -f ./client/Dockerfile ./client
docker build -t bhupesh0215/multi-server -f ./server/Dockerfile ./server
docker build -t bhupesh0215/multi-worker -f ./worker /Dockerfile ./worker
