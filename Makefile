VERSION=0.0.1
.PHONY: docker-build
docker-build:
	@(docker build -t terrifried .)
.PHONY: docker-push
docker-push:
	@(docker tag terrifried xackery/terrifried:$(VERSION))
	@(docker push xackery/terrifried:$(VERSION))