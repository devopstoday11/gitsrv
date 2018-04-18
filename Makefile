NAME:=gitsrv
DOCKER_REPOSITORY:=stefanprodan
DOCKER_IMAGE_NAME:=$(DOCKER_REPOSITORY)/$(NAME)
VERSION:=0.0.5

.PHONY: build
build:
	docker build -t $(DOCKER_IMAGE_NAME):$(VERSION) .

.PHONY: push
push:
	docker push $(DOCKER_IMAGE_NAME):$(VERSION)