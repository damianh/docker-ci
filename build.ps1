docker build dotnet-sdks/4 -t damianh/dotnet-sdks:4
docker push damianh/dotnet-sdks:4

docker build dotnet-node/4 -t damianh/dotnet-node:4
docker push damianh/dotnet-node:4

docker build dotnet-node-pulumi-awscli/1 -t damianh/dotnet-node-pulumi-awscli:1
docker push damianh/dotnet-node-pulumi-awscli:1