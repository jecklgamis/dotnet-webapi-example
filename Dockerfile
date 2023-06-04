FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
MAINTAINER Jerrico Gamis <jecklgamis@gmail.com>

WORKDIR /src
COPY dotnet-webapi-example.csproj .
RUN dotnet restore
COPY . .
RUN dotnet publish -c release -o /app

FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build /app .
ENTRYPOINT ["dotnet", "dotnet-webapi-example.dll"]
