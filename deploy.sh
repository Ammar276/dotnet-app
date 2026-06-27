#!/bin/bash
set -e

IMAGE_NAME="ammaramara/amma-dotnet-app"
VERSION=$1

if [ -z "$VERSION" ]; then
echo "ERROR: There is no Version Number"
echo "The correct use is: ./deploy.sh v3"
exit 1
fi

echo "Starting Automating CI/CD for Version: $VERSION"
echo "New Build Image is running..."

sudo docker build -t $IMAGE_NAME:$VERSION .

echo "Auto Updating file docker-compose.yml..."
sed -i "s|image: $IMAGE_NAME:.*|image: $IMAGE_NAME:$VERSION|g" docker-compose.yml

echo "Updating and Publish are running  (Zero Downtime Deployment)..."
sudo docker compose up -d

echo " Your legend now is Working with new Version: $VERSION The Publish Completed Successfully!"
