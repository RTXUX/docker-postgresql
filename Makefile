all: build

build:
	@docker build --tag=taoky/postgresql .

release:
	@docker build --tag=taoky/postgresql:$(shell cat VERSION) .

push: release
	@docker push taoky/postgresql:$(shell cat VERSION)
