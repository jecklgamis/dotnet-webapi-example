## dotnet-webapi-example

[![Build](https://github.com/jecklgamis/dotnet-webapi-example/actions/workflows/build.yml/badge.svg)](https://github.com/jecklgamis/dotnet-webapi-example/actions/workflows/build.yml)

An example app using DotNet Web API.

## What's In the Box?

* Web API app using DotNet 7
* Docker image
* Kubernetes Helm Chart
* GitHub Action workflows

## Requirements

* [.NET 7](https://dotnet.microsoft.com/en-us/download/dotnet/7.0)
* [Docker](https://www.docker.com/)
* [Make](https://www.gnu.org/software/make/) (optional)

## Building

DotNet binary:
```
dotnet build
``` 

Docker image:
```
docker build -t dotnetweb-api-example:main .
```

## Running

Using DotNet binary:
```
dotnet run --environment Development
``` 

Using `Docker`:

```
docker run \
    -e "DOTNET_ENVIRONMENT=Production" \
    -e "ASPNETCORE_URLS=http://*:8080" \
    -it dotnetweb-api-example:main
```
Then point your browser to http://localhost:8080.


