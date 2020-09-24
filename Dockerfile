## Comando obrigatório
## Baixa a imagem do node com versão alpine (versão mais simplificada e leve)
FROM node:alpine

## Define o local onde o app vai ficar no disco do container
## Pode ser o diretório que você quiser
WORKDIR /usr/app

## Copia tudo que começa com package e termina com .json para dentro da pasta /usr/app
COPY package*.json ./

## Serve para executar comandos no processo de montagem da imagem que estamos construindo no Dockerfile, 
## ele é executado durante o build (construção da imagem) e não durante a construção do container. Em um Dockerfile é possível ter mais de um comando RUN.
RUN npm install

## Copia tudo que está no diretório onde o arquivo Dockerfile está 
## para dentro da pasta /usr/app do container
## Vamos ignorar a node_modules por isso criaremos um .dockerignore
COPY . .

## Container ficará ouvindo os acessos na porta 3000
## Instrução que informa qual porta deverá ser liberada. EXPOSE não é um comando que libera a porta, 
## ele serve para ficar documentado no Dockerfile quais portas deverão ser liberadas ao criar o container.
## Para efetivamente liberar a porta é preciso passar o parâmetro -p  no comando docker run
EXPOSE 3000

## Diferente do RUN, o CMD executa apenas na criação do container e não no build da imagem. Deve ser único no Dockerfile.
## Executa o comando npm start para iniciar o script que que está no package.json
CMD npm start
