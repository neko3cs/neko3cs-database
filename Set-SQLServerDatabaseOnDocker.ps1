#!/usr/local/bin pwsh

docker pull mcr.microsoft.com/mssql/server:latest &&
docker run `
    -e 'ACCEPT_EULA=Y' `
    -e 'SA_PASSWORD=P@ssword!' `
    -p 1433:1433 `
    --name sql1 `
    -v ${PWD}:/tmp `
    -d mcr.microsoft.com/mssql/server:latest
