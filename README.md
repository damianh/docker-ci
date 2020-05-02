# docker-ci 

![Docker Image CI](https://github.com/damianh/docker-ci/workflows/Docker%20Image%20CI/badge.svg)

Collection of docker images I use to build .NET libraries, services and
applications.

The images can be be run directly or be used as base images for custom build
environments (see notes below).

1. [damianh/dotnet-core-lts-sdks](dotnet-core-lts-sdks) - Image containing the LTS
   versions of .NET Core SDKs (3.1.x, 2.1.x), git and docker-cli . Primarily used to
   build .NET libraries, services and applications.

2. [damianh/dotnet-core-node](dotnet-core-node) - Image based `dotnet-core-lts-sdks`
   with Node LTS. Primarily used to build applications with .NET backend(s)
   and JavaScript SPA frontend(s).

## damianh/dotnet-core-lts-sdks

| Tag | OS Version / Arch | Contents | Dockerfile |
| - | - | - | - |
| 1 | Alpine 3.11 / x64 | .NET Core SDK 3.1.200, .NET Core SDK 2.1.805. git 2.24.3, docker-cli 19.03.5 | [dockerfile](dotnet-core-lts-sdks/dockerfile) |

[View on DockerHub](https://hub.docker.com/repository/docker/damianh/dotnet-core-lts-sdks)

## damianh/dotnet-core-node

| Tag | OS Version / Arch | Contents | Dockerfile |
| - | - | - | - |
| 1 | Alpine 3.11 / x64 | See damianh/dotnet-core-lts-sdks:1, node 12.15.0, npm 12.16.2  | [dockerfile](dotnet-core-lts-sdks/dockerfile) |

[View on DockerHub](https://hub.docker.com/repository/docker/damianh/dotnet-core-node)

## Notes

- Images based on LTS version of software will, in general, be updated on a quarterly basis or
  if a particular urgent fix is required.
- It is not intended to support all possible version combinations.
- Primary usage audience are products, projects, and organizations that I am
  personally involved in and for which support will be prioritized. One is, of
  course, welcome to fork/copy/learn from the contents of this repository.
- PRs to bump versions welcome. PRs must include Tag docs.

## Example Usages

- [ProxyKit](https://github.com/ProxyKit/ProxyKit/blob/master/build.sh)

----
[@randompunter](https://twitter.com/randompunter)
