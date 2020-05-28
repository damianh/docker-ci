$versions = @(1, 2);

$versions | ForEach-Object {
    docker build dotnet-core-lts-sdks/$_ -t damianh/dotnet-core-lts-sdks:$_
    docker push damianh/dotnet-core-lts-sdks:$_

    docker build dotnet-core-node/$_ -t damianh/dotnet-core-node:$_
    docker push damianh/dotnet-core-node:$_
}