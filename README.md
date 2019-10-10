# ambiente
criacao de ambiente com vagrant e ansible para testes com mysql-server-5.7

Para utilização deste ambiente:

1 - baixe o repositório e descompacte

2 - verifique os ips que quer dar a suas vms nos arquivos:

    Vagrantfile
    
    configs/basic_configs.sh
    
    ansible/hosts

3 - verifique usuário e senha no arquivo ansible/mysql57.playbook.yml nos campos name e password

4 - vagrant up

5 - esperar o ambiente ficar pronto

6 - abrir o workbanch e colocar o IP, usuário e senha corretos

7 - pronto


