help: ## Mostrando o help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

all: ## Criando todas as imagens

debian: ## Criando a imagem para container baseado em debian 
	docker build -t brunopdoliveira/debian:latest . -f Dockerfile-debian

bind: ## Criando a imagem para container bind
	docker build -t brunopdoliveira/bind:latest . -f Dockerfile-bind

unbound: ## Criando a imagem para container unbound
	docker build -t brunopdoliveira/unbound:latest . -f Dockerfile-unbound

sensor: ## Criando a imagem para um simulador de sensor de temperatura/umidade
	docker build -t brunopdoliveira/sensor:latest . -f Dockerfile-sensor

monitor: ## Criando a imagem para monitorar 
	docker build -t brunopdoliveira/monitor:latest . -f Dockerfile-monitor


push: ## Envia as imagens para o Docker Hub (opcional)
	docker login
	docker push brunopdoliveira/debian:latest
	docker push brunopdoliveira/bind:latest
	docker push brunopdoliveira/sensor:latest
	docker push brunopdoliveira/monitor:latest
	docker push brunopdoliveira/unbound:latest

clean: ## Remove as imagens criadas e remove imagens nao utilizadas
	docker image rm -f brunopdoliveira/debian
	docker image rm -f brunopdoliveira/bind
	docker image rm -f brunopdoliveira/sensor
	docker image rm -f brunopdoliveira/monitor
	docker image rm -f brunopdoliveira/unbound
	docker image prune -a -f

debian-multi-arch: ## Criando a imagem para container baseado em debian para arm64/v8 e amd64
	docker buildx build --platform linux/arm64/v8,linux/amd64 --tag brunopdoliveira/debian:latest --push . -f Dockerfile-debian
