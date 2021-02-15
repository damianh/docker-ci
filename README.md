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

## Changelog

- 2021-02-13
  - Removed `dotnet-node-pulumi-awscli` images as Pulumi already supply runtime
    specific images.
  - Built images `dotnet-sdks:6`, `dotnet-node:6` which contains a .NET critical
    security update.
- 2021-01-13
  - Built images `dotnet-sdks:5`, `dotnet-node:5` and `dotnet-node-pulumi-awscli:2`

## dotnet-sdks

Image containing supported versions of .NET/.NET Core SDKs (5.x, 3.1.x,
2.1.x), git, and docker-cli. Used to build .NET libraries, services and
applications.

[View on DockerHub](https://hub.docker.com/r/damianh/dotnet-sdks/tags)

| Tag | OS Version / Arch | Contents | Dockerfile | CLI |
| - | - | - | - | - |
| 6 | Alpine 3.13 / x64 | .NET Core SDK 2.1.813<BR>.NET Core SDK 3.1.406<BR>NET 5.0.103<BR>git 2.30.1<BR>docker-cli 20.10.3<BR>glibc-2.32-r0<BR>glibc-bin-2.32-r0 | [dockerfile](dotnet-sdks/6/dockerfile) | `docker pull damianh/dotnet-sdks:6` |
| 5 | Alpine 3.12 / x64 | .NET Core SDK 2.1.812<BR>.NET Core SDK 3.1.405<BR>.NET 5.0.102<BR>git 2.26.2<BR>docker-cli 19.03.12<BR>glibc-2.32-r0<BR>glibc-bin-2.32-r0 | [dockerfile](dotnet-sdks/5/dockerfile) | `docker pull damianh/dotnet-sdks:5` |
| 4 | Alpine 3.12 / x64 | .NET Core SDK 2.1.811<BR>.NET Core SDK 3.1.404<BR>.NET 5.0.100<BR>git 2.26.2<BR>docker-cli 19.03.12<BR>glibc-2.32-r0<BR>glibc-bin-2.32-r0 | [dockerfile](dotnet-sdks/4/dockerfile) | `docker pull damianh/dotnet-sdks:4` |
| 3 | Alpine 3.12 / x64 | .NET Core SDK 2.1.811<BR>.NET Core SDK 3.1.404<BR>.NET 5.0.100<BR>git 2.26.2<BR>docker-cli 19.03.12 | [dockerfile](dotnet-sdks/3/dockerfile) | `docker pull damianh/dotnet-sdks:3` |
| 2 | Alpine 3.12 / x64 | .NET Core SDK 2.1.811<BR>.NET Core SDK 3.1.403<BR>.NET 5.0.100-RC.2<BR>git 2.26.2<BR>docker-cli 19.03.12 | [dockerfile](dotnet-sdks/2/dockerfile) | `docker pull damianh/dotnet-sdks:2` |
| 1 | Alpine 3.12 / x64 | .NET Core SDK 2.1.810<BR>.NET Core SDK 3.1.400<BR>.NET 5.0.100-RC.1<BR>git 2.26.2<BR>docker-cli 19.03.12 | [dockerfile](dotnet-sdks/1/dockerfile) | `docker pull damianh/dotnet-sdks:1` |

## dotnet-node

Image based on `dotnet-sdks` above with addition of Node LTS. Used to build
applications with .NET backend(s) and JavaScript SPA frontend(s).

[View on DockerHub](https://hub.docker.com/r/damianh/dotnet-node/tags)

| Tag | OS Version / Arch | Contents | Dockerfile | CLI |
| - | - | - | - | - |
| 6 | Alpine 3.13 / x64 | Based on damianh/dotnet-sdks:6<BR>node 14.15.4<BR>npm 6.14.10  | [dockerfile](dotnet-node/6/dockerfile) | `docker pull damianh/dotnet-node:6` |
| 5 | Alpine 3.12 / x64 | Based on damianh/dotnet-sdks:5<BR>node 12.20.1<BR>npm 6.14.10  | [dockerfile](dotnet-node/5/dockerfile) | `docker pull damianh/dotnet-node:5` |
| 4 | Alpine 3.12 / x64 | Based on damianh/dotnet-sdks:4<BR>node 12.18.4<BR>npm 6.14.6  | [dockerfile](dotnet-node/4/dockerfile) | `docker pull damianh/dotnet-node:4` |
| 3 | Alpine 3.12 / x64 | Based on damianh/dotnet-sdks:3<BR>node 12.18.4<BR>npm 6.14.6  | [dockerfile](dotnet-node/3/dockerfile) | `docker pull damianh/dotnet-node:3` |
| 2 | Alpine 3.12 / x64 | Based on damianh/dotnet-sdks:2<BR>node 12.18.4<BR>npm 6.14.6  | [dockerfile](dotnet-node/2/dockerfile) | `docker pull damianh/dotnet-node:2` |
| 1 | Alpine 3.12 / x64 | Based on damianh/dotnet-sdks:1<BR>node 12.18.3<BR>npm 6.14.6  | [dockerfile](dotnet-node/1/dockerfile) | `docker pull damianh/dotnet-node:1` |


----
[@randompunter](https://twitter.com/randompunter)
