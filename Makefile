shell:
	docker run -it paralin/semantic-release-cli $(SHELL_ARGS)

docker:
	docker build -t "paralin/semantic-release-cli" .
