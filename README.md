### install_mongodb
## Repositório com playbook Ansible e confs de instalação MongoDB

OBS: Por enquanto o playbook faz uma instalação básica do MongoDB, sem o ReplicaSet ativo e sem Autenticação, a ideia é aprimorar o mesmo para a criação do Cluster completo

Scripts criados por Anselmo Borges

Data da criação: 03.01.2018

Ultima atualização: 07.01.2018
* Adicionada a replicação e criação dos users por playbook.

Arquivos contidos nesse Repositório:
* No diretorio ansible: O playbook mongo_install.yaml
* No diretorio conf: Todos os arquivos de configuração do Mongo e outros, edite conforme a necessidade, substituindo seu IP ou seu data e log dir por exemplo.

## Comando para execução:

ansible-playbook --extra-vars "host_var=nome-do-host" mongo_install.yaml

Se por um acaso parar em algum ponto, corrija o playbook e volte rodando do step que deu erro, por exemplo:

ansible-playbook --extra-vars "host_var=nome-do-host" --start-at-task="Parando o Firewalld" mongo_install.yaml 

## Edição do mongod.conf e mongod-r.conf:
Deve ser editado o mongod.conf e mongod-r.conf sempre que executado em um node diferente, (caso contrário o mongo não sobe).

## Criação de usuário:
Foi criada uma variavel de ambiente chamada IP, a mesma deve rodar somente no primeiro node, quando executado no segundo, deve ser comentado a task de criação de usuário ou usar um skip

### Comandos para ativar a replicação via ReplicaSet:
## Habilitando a replicação:
rs.initiate( {_id : "rs0",members: [{ _id : 0, host : "mongodb01:27017"}]});

## Adicionando o segundo node:
rs.add("mongodb02:27017");

## Validando o Status do ReplicaSet:
rs.status();

### Dividas:

anselmoborges@gmail.com

http://www.anselmodba.com
