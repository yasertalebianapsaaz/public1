FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 8080
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src


ENV ASPNETCORE_URLS=http://0.0.0.0:8080 \

ENTRYPOINT ["dotnet", "index.html"]
