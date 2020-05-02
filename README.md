# docker-ci

Collection of docker images I use to build .NET libraries, services and applications.

The images can be be run directly or can act as base images for custom build
environments.

1. [damianh/dotnet-core-lts-sdks](dotnet-core-lts-sdks) - Image containing the LTS
   versions of .NET Core SDKs (3.1.x, 2.1.x), git and docker-cli . Primarily used to
   build .NET libraries, services and applications.

2. [damianh/dotnet-core-node](dotnet-core-node) - Image based `dotnet-core-lts-sdks`
   with Node LTS. Primarily used to build web applications with .NET backend(s)
   and JavaScript SPA frontend(s).

## `damianh/dotnet-core-lts-sdks` Tags

| Tag | OS Version / Arch | Contents | Dockerfile  |
| - | - | - | - | - |
| 1 | Alpine 3.11 / x64 | .NET Core SDK 3.1.200, .NET Core SDK 2.1.805. git 2.24.3, docker-cli 19.03.5 | [dockerfile](dotnet-core-lts-sdks/dockerfile) |

[View on DockerHub](https://hub.docker.com/repository/docker/damianh/dotnet-core-lts-sdks)

## `damianh/dotnet-core-node` Tags

Based on damianh/dotnet-core-lts-sdks:1

| Tag | OS Version / Arch | Contents | Dockerfile  |
| - | - | - | - | - |
| 1 | Alpine 3.11 / x64 | See damianh/dotnet-core-lts-sdks:1, node 12.15.0  | [dockerfile](dotnet-core-lts-sdks/dockerfile) |

[View on DockerHub](https://hub.docker.com/repository/docker/damianh/dotnet-core-node)

## Maintenance Plan

- Images based on LTS version of software will, in general, be updated on a quarterly basis or
  if a particular urgent fix is required.
- It is not intended to support all possible version combinations.
- PRs to bump versions welcome. PRs must include Tag docs.

## Example Usages

- [ProxyKit](https://github.com/ProxyKit/ProxyKit/blob/master/build.sh)
