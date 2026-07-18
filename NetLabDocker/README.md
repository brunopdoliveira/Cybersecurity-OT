# NetLabDocker - Laboratório de redes usando docker
* Lab de redes dockerizado para estudo de conceitos de rede

--- 

# Quickstart
## Pre-requisitos
* git (https://git-scm.com/)
* docker (recomendado utilizar última versão)
  * Engine: https://docs.docker.com/engine
  * Desktop: https://docs.docker.com/desktop
## Clonando o repositorio
```
git clone https://github.com/brunopdoliveira/NetLabDocker.git
```

## Executando os containers
```
cd NetLabDocker
cd netlab
make start
```

## Testando 
```
./testaAmbiente.sh
```

## Exemplo de acesso ao roteador R1
```
docker exec -it R1 bash
```
* Executando vtysh em R1:
```
bash-5.1# vtysh

Hello, this is FRRouting (version 7.5).
Copyright 1996-2005 Kunihiro Ishiguro, et al.

R1# 
```

## Desligando o laboratório
```
make stop
```

---

# Algumas informações sobre os diretórios

* [imagens](https://github.com/brunopdoliveira/Cybersecurity-OT/tree/main/NetLabDocker/imagens#readme) 
* [netlab](https://github.com/brunopdoliveira/NetLabDocker/tree/main/NetLab#readme)


