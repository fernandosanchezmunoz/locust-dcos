export REPO=fernandosanchez
export IMAGE_NAME=locust-dcos

docker login
IMAGE=$(docker build . |grep "Successfully built"| awk '{ print $3 }')
docker tag $IMAGE $REPO:$IMAGE_NAME
docker push $REPO:$IMAGE_NAME
