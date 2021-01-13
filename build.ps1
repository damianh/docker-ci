docker build dotnet-sdks/5 -t damianh/dotnet-sdks:5
docker push damianh/dotnet-sdks:5

docker build dotnet-node/5 -t damianh/dotnet-node:5
docker push damianh/dotnet-node:5

docker build dotnet-node-pulumi-awscli/2 -t damianh/dotnet-node-pulumi-awscli:2
docker push damianh/dotnet-node-pulumi-awscli:2