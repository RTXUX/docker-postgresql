all: build

build:
	@docker build --tag=ghcr.io/taoky/postgresql .

release:
	@docker build --tag=ghcr.io/taoky/postgresql:$(shell cat VERSION) .

push: release
	@docker push ghcr.io/taoky/postgresql:$(shell cat VERSION)
