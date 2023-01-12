all: build

build:
	@docker build --tag=ghcr.io/rtxux/postgresql .

release:
	@docker build --tag=ghcr.io/rtxux/postgresql:$(shell cat VERSION) .

push: release
	@docker push ghcr.io/rtxux/postgresql:$(shell cat VERSION)
