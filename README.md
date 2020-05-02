# docker-ci

Collection of docker images I use to build dotnet libraries, services and applications.

The images are can be used for running directly or can act as base images upon
which I build custom build environments.

1. [dotnet-core-lts-sdks](dotnet-core-lts-sdks) - Image containing the LTS
   versions of .NET Core. Primarily used to build .NET libraries.

2. [dotnet-core-docker](dotnet-node-docker) - Image containing LTS versions of
   .NET Core with Docker support. Primarily used to build .NET services that may
   use other container for testing or producing containers.

3. [dotnet-node-docker](dotnet-node-docker) - Image containing LTS versions of
   .NET Core, Node and with docker support. Primarily used to build web
   applications with .NET backend(s) and JavaScript SPA frontend(s) that use
   other containers for testing or producing containers.
