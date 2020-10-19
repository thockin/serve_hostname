all: serve_hostname

serve_hostname: serve_hostname.go
	CGO_ENABLED=0 go build

container: serve_hostname
	docker build -t gcr.io/thockin-dev/serve_hostname:latest .
