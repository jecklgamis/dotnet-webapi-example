## .NET-webapi-example

[![Build](https://github.com/jecklgamis/dotnet-webapi-example/actions/workflows/build.yml/badge.svg)](https://github.com/jecklgamis/.NET-webapi-example/actions/workflows/build.yml)

An example Web API app using ASP.NET Core.

## What's In the Box?
* Web API app using .NET 7
* Docker image
* Kubernetes Helm Chart
* GitHub Action workflows

## Requirements

* [.NET 7](https://.NET.microsoft.com/en-us/download/.NET/7.0)
* [Docker](https://www.docker.com/)
* [Make](https://www.gnu.org/software/make/) (optional)

## Building

.NET binary:

```
dotnet build
``` 

Docker image:

```
docker build -t dotnet-web-api-example:main .
```

## Running

.NET binary:
```
dotnet run --environment Development
``` 

`Docker`:
```
docker run \
    -e "DOTNET_ENVIRONMENT=Production" \
    -e "ASPNETCORE_URLS=http://*:8080" \
    -it dotnet-web-api-example:main
```

Then point your browser to http://localhost:8080.


