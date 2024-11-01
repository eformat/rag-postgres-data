# Image URL to use all building/pushing image targets
REGISTRY ?= quay.io
REPOSITORY ?= $(REGISTRY)/eformat/rag-postgres-data

IMG := $(REPOSITORY):latest

podman-login:
	@podman login -u $(DOCKER_USER) -p $(DOCKER_PASSWORD) $(REGISTRY)

podman-build:
	podman build . -t ${IMG} -f Containerfile

podman-push: podman-build
	podman push ${IMG}
