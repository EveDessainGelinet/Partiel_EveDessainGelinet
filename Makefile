
start:
	go run ./main.go

test:
	cd handler
	go test
	cd ..

build: #test
	go test
	go build

infra:
	terraform apply
