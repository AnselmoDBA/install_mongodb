# install_mongodb
Repositório com playbook Ansible e confs de instalação MongoDB

OBS: Por enquanto o playbook faz uma instalação básica do MongoDB, sem o ReplicaSet ativo e sem Autenticação, a ideia é aprimorar o mesmo para a criação do Cluster completo

Scripts criados por Anselmo Borges

Ultima atualização: 03.01.2018

Arquivos contidos nesse Repositório:
* No diretorio ansible: O playbook mongo_install.yaml
* No diretorio conf: Todos os arquivos de configuração do Mongo e outros, edite conforme a necessidade, substituindo seu IP ou seu data e log dir por exemplo.

Comando para execução:

ansible-playbook --extra-vars "host_var=nome-do-host" mongo_install.yaml

Se por um acaso parar em algum ponto, corrija o playbook e volte rodando do step que deu erro, por exemplo:

ansible-playbook --extra-vars "host_var=mongodb3" --start-at-task="Parando o Firewalld" mongo_install.yaml 


