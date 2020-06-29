FROM mcr.microsoft.com/dotnet/core/sdk:3.1

COPY . /src

WORKDIR /src/SimpleAppTests

RUN rm -rf bin obj ../SimpleApp/bin ../SimpleApp/obj
RUN dotnet restore
RUN dotnet test /p:AltCover=true /p:AltCoverCobertura=coverage.xml /p:CopyLocalLockFileAssemblies="true"
