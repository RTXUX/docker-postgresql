all: build

build:
	@docker build --tag=ghcr.io/RTXUX/postgresql .

release:
	@docker build --tag=ghcr.io/RTXUX/postgresql:$(shell cat VERSION) .

push: release
	@docker push ghcr.io/RTXUX/postgresql:$(shell cat VERSION)
