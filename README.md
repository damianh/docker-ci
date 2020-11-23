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
| *4* | Alpine 3.12 / x64 | .NET Core SDK 2.1.811, .NET Core SDK 3.1.404, .NET 5.0.100, git 2.26.2, docker-cli 19.03.12, glibc-2.32-r0, glibc-bin-2.32-r0 | [dockerfile](dotnet-sdks/4/dockerfile) | `docker pull damianh/dotnet-sdks:4` |
| 3 | Alpine 3.12 / x64 | .NET Core SDK 2.1.811, .NET Core SDK 3.1.404, .NET 5.0.100, git 2.26.2, docker-cli 19.03.12 | [dockerfile](dotnet-sdks/3/dockerfile) | `docker pull damianh/dotnet-sdks:3` |
| 2 | Alpine 3.12 / x64 | .NET Core SDK 2.1.811, .NET Core SDK 3.1.403, .NET 5.0.100-RC.2, git 2.26.2, docker-cli 19.03.12 | [dockerfile](dotnet-sdks/2/dockerfile) | `docker pull damianh/dotnet-sdks:2` |
| 1 | Alpine 3.12 / x64 | .NET Core SDK 2.1.810, .NET Core SDK 3.1.400, .NET 5.0.100-RC.1, git 2.26.2, docker-cli 19.03.12 | [dockerfile](dotnet-sdks/1/dockerfile) | `docker pull damianh/dotnet-sdks:1` |

## dotnet-node

Image based on `dotnet-sdks` above with addition of Node LTS. Used to build
applications with .NET backend(s) and JavaScript SPA frontend(s).

[View on DockerHub](https://hub.docker.com/r/damianh/dotnet-node/tags)

| Tag | OS Version / Arch | Contents | Dockerfile | CLI |
| - | - | - | - | - |
| *4* | Alpine 3.12 / x64 | Based on damianh/dotnet-sdks:4, node 12.18.4, npm 6.14.6  | [dockerfile](dotnet-node/4/dockerfile) | `docker pull damianh/dotnet-node:4` |
| 3 | Alpine 3.12 / x64 | Based on damianh/dotnet-sdks:3, node 12.18.4, npm 6.14.6  | [dockerfile](dotnet-node/3/dockerfile) | `docker pull damianh/dotnet-node:3` |
| 2 | Alpine 3.12 / x64 | Based on damianh/dotnet-sdks:2, node 12.18.4, npm 6.14.6  | [dockerfile](dotnet-node/2/dockerfile) | `docker pull damianh/dotnet-node:2` |
| 1 | Alpine 3.12 / x64 | Based on damianh/dotnet-sdks:1, node 12.18.3, npm 6.14.6  | [dockerfile](dotnet-node/1/dockerfile) | `docker pull damianh/dotnet-node:1` |

## dotnet-node-pulumi-awscli

Image based on `dotnet-node` above with addition of Pulumi and AWS-CLI. Used to run
Pulumi stacks in .NET or Node/Typescript.

[View on DockerHub](https://hub.docker.com/r/damianh/dotnet-node/tags)

| Tag | OS Version / Arch | Contents | Dockerfile | CLI |
| - | - | - | - | - |
| 1 | Alpine 3.12 / x64 | Based on damianh/dotnet-node:4, typescript 2.5.3, aws-cli 2.1.3, pulumi 2.14.0  | [dockerfile](dotnet-node-pulumi-awscli/1/dockerfile) | `docker pull damianh/dotnet-node-pulumi-awscli:1` |

## Example Usages

- [ProxyKit](https://github.com/ProxyKit/ProxyKit/blob/master/build.sh)

----
[@randompunter](https://twitter.com/randompunter)
