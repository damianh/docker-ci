# docker-ci

Collection of docker images I use to build .NET libraries, services and
.NET + Node applications.

The images can be be run directly or be used as base images for custom build
environments (see notes below).

- Images will, in general, be updated on a bi-monthly basis or if a particular
  urgent fix is required.
- It is not intended to support all possible version combinations.
- PRs to bump versions welcome. Please include Tag docs in the readme with PRs.
- Primary usage audience are products, projects, and organizations that I am
  personally involved with and for which support will be prioritized. One is, of
  course, welcome to fork/copy the contents of this repository.

## dotnet-sdks

Image containing supported versions of .NET/.NET Core SDKs (5.x, 3.1.x,
2.1.x),git, and docker-cli. Used to build .NET libraries, services and
applications.

[View on DockerHub](https://hub.docker.com/r/damianh/dotnet-sdks/tags)

| Tag | OS Version / Arch | Contents | Dockerfile | CLI |
| - | - | - | - | - |
| *3* | Alpine 3.12 / x64 | .NET Core SDK 2.1.811, .NET Core SDK 3.1.404, .NET 5.0.100, git 2.26.2, docker-cli 19.03.12 | [dockerfile](dotnet-sdks/3/dockerfile) | `docker pull damianh/dotnet-sdks:3` |
| 2 | Alpine 3.12 / x64 | .NET Core SDK 2.1.811, .NET Core SDK 3.1.403, .NET 5.0.100-RC.2, git 2.26.2, docker-cli 19.03.12 | [dockerfile](dotnet-sdks/2/dockerfile) | `docker pull damianh/dotnet-sdks:2` |
| 1 | Alpine 3.12 / x64 | .NET Core SDK 2.1.810, .NET Core SDK 3.1.400, .NET 5.0.100-RC.1, git 2.26.2, docker-cli 19.03.12 | [dockerfile](dotnet-sdks/1/dockerfile) | `docker pull damianh/dotnet-sdks:1` |

## dotnet-node

Image based on `dotnet-sdks` above with addition of Node LTS. Used to build
applications with .NET backend(s) and JavaScript SPA frontend(s).

[View on DockerHub](https://hub.docker.com/r/damianh/dotnet-node/tags)

| Tag | OS Version / Arch | Contents | Dockerfile | CLI |
| - | - | - | - | - |
| *3* | Alpine 3.12 / x64 | Based on damianh/dotnet-sdks:3, node 12.18.4, npm 6.14.6  | [dockerfile](dotnet-node/3/dockerfile) | `docker pull damianh/dotnet-node:3` |
| 2 | Alpine 3.12 / x64 | Based on damianh/dotnet-sdks:2, node 12.18.4, npm 6.14.6  | [dockerfile](dotnet-node/2/dockerfile) | `docker pull damianh/dotnet-node:2` |
| 1 | Alpine 3.12 / x64 | Based on damianh/dotnet-sdks:1, node 12.18.3, npm 6.14.6  | [dockerfile](dotnet-node/1/dockerfile) | `docker pull damianh/dotnet-node:1` |

## dotnet-core-lts-sdks (obsolete)

Image based on `dotnet-core-lts-sdks` above with addition of Node LTS. Used to build
applications with .NET backend(s) and JavaScript SPA frontend(s).

| Tag | OS Version / Arch | Contents | Dockerfile | CLI |
| - | - | - | - | - |
| 3 | Alpine 3.12 / x64 | .NET Core SDK 3.1.401, .NET Core SDK 2.1.809. git 2.26.2, docker-cli 19.03.12 | [dockerfile](dotnet-core-lts-sdks/3/dockerfile) | `docker pull damianh/dotnet-core-lts-sdks:3` |
| 2 | Alpine 3.11 / x64 | .NET Core SDK 3.1.300, .NET Core SDK 2.1.806. git 2.24.3, docker-cli 19.03.5 | [dockerfile](dotnet-core-lts-sdks/2/dockerfile) | `docker pull damianh/dotnet-core-lts-sdks:2` |
| 1 | Alpine 3.11 / x64 | .NET Core SDK 3.1.200, .NET Core SDK 2.1.805. git 2.24.3, docker-cli 19.03.5 | [dockerfile](dotnet-core-lts-sdks/1/dockerfile) | `docker pull damianh/dotnet-core-lts-sdks:1` |

## damianh/dotnet-core-node (obsolete)

| Tag | OS Version / Arch | Contents | Dockerfile | CLI |
| - | - | - | - | - |
| 3 | Alpine 3.12 / x64 | Based on damianh/dotnet-core-lts-sdks:3, node 12.18.3, npm 6.14.6  | [dockerfile](dotnet-core-lts-sdks/3/dockerfile) | `docker pull damianh/dotnet-core-node:3` |
| 2 | Alpine 3.11 / x64 | Based on damianh/dotnet-core-lts-sdks:2, node 12.15.0, npm 6.13.4  | [dockerfile](dotnet-core-lts-sdks/2/dockerfile) | `docker pull damianh/dotnet-core-node:2` |
| 1 | Alpine 3.11 / x64 | Based on damianh/dotnet-core-lts-sdks:1, node 12.15.0, npm 6.13.4  | [dockerfile](dotnet-core-lts-sdks/1/dockerfile) | `docker pull damianh/dotnet-core-node:1` |



## Example Usages

- [ProxyKit](https://github.com/ProxyKit/ProxyKit/blob/master/build.sh)

----
[@randompunter](https://twitter.com/randompunter)
