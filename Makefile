IMAGE_NAME:=dotnet-webapi-example
IMAGE_TAG:=main

default:
	cat ./Makefile
dist:
	dotnet build
image:
	docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .
run:
	docker run \
	-e "ASPNETCORE_URLS=http://*:8080" \
	-p 8080:8080 $(IMAGE_NAME):$(IMAGE_TAG)
run-app-dev-mode:
	dotnet run --environment Development
run-shell:
	docker run -i -t $(IMAGE_NAME):$(IMAGE_TAG) /bin/bash
all: dist image
up: all run
clean:
	dotnet clean
