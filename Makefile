
.PHONY: build server web test

NODE_VERSION := "lts/fermium"

build: server web

server:
	go run build.go build

web:
	. ${NVM_DIR}/nvm.sh && nvm use ${NODE_VERSION} && \
	go run build.go web-build


test:
	. ${NVM_DIR}/nvm.sh && nvm use ${NODE_VERSION} && \
	go run build.go test && \
	go run build.go test



