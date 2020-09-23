Terminal commands:

**docker build -t tagname/tagnameexample .**

``docker build`` cria uma imagem a partir do Dockerfile.

``-t`` é o nome/tag da imagem.

``tagname/tagnameexample`` nome que escolhi para imagem

``.`` onde o Dockerfile está (nesse caso é um . pois o comando será executado no mesmo diretório que o Dockerfile se encontra — igual ao code . que fazemos para abrir o VS Code na pasta que estamos no terminal.

**docker images**

``docker images`` mostra as imagens criadas


**docker run -p 3000:3000 -d tagname/tagnameexample**

``docker run`` cria uma container

``-p 3000:3000`` libera a porta do container para que cada requisição de fora querendo acessar a porta 3000 o container possa ouvir também na porta 3000.

``-d`` detach, ou seja, o terminal fica livre e o processo roda em background, porém exibe ID do container.

``tagname/tagnameexample`` nome da imagem que estou usando para criar o container.

**docker stop ID**

parar o container de ID tal

**docker start ID**

iniciar o container de ID tal

**docker logs ID**

ver os logs do que está acontecendo no container de ID tal

``O ID do container se encontra ao digitar o comando docker ps``

**docker rmi ID**

remover uma imagem da sua máquina

**docker-compose up**

criar o container e subir o serviço (ler o arquivo docker-compose.yml)