$version=1;
docker build dotnet-core-lts-sdks -t damianh/dotnet-core-lts-sdks:$version
docker push damianh/dotnet-core-lts-sdks:$version

docker build dotnet-core-node -t damianh/dotnet-core-node:$version
docker push damianh/dotnet-core-node:$version
