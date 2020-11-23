<#

Uncomment this to rebuild if needed (but should not be needed).

@(1, 2, 3) | ForEach-Object {
    docker build dotnet-core-lts-sdks/$_ -t damianh/dotnet-core-lts-sdks:$_
    docker push damianh/dotnet-core-lts-sdks:$_

    docker build dotnet-core-node/$_ -t damianh/dotnet-core-node:$_
    docker push damianh/dotnet-core-node:$_
}
#>

@(4) | ForEach-Object {
    docker build dotnet-sdks/$_ -t damianh/dotnet-sdks:$_
    docker push damianh/dotnet-sdks:$_

    docker build dotnet-node/$_ -t damianh/dotnet-node:$_
    docker push damianh/dotnet-node:$_
}