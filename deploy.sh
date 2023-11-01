
docker build -t bhupesh0215/multi-client -f ./client/Dockerfile ./client
docker build -t bhupesh0215/multi-server -f ./server/Dockerfile ./server
docker build -t bhupesh0215/multi-worker -f ./worker /Dockerfile ./worker

docker login -u ${{ secrets.DOCKER_HUB_USERNAME }} -p ${{ secrets.DOCKER_HUB_PASSWORD }}

docker push bhupesh0215/multi-client
docker push bhupesh0215/multi-server
docker push bhupesh0215/multi-worker

kubectl apply -f k8s

kubectl set image deployments/server-deployment server=bhupesh0215/multi-server

