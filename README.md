# ambiente
criacao de ambiente com vagrant e ansible para testes com mysql-server-5.7

Para utilização deste ambiente:

1 - baixe o repositório e descompacte

2 - verifique os ips que quer dar a suas vms nos arquivos:

    Vagrantfile
    
    configs/basic_configs.sh
    
    ansible/hosts

3 - vagrant up

4 - esperar o ambiente ficar pronto

5 - abrir o workbanch e colocar as credenciais 
    
      Ip que configurou nos arquivos acima
      name: usuario
      password: SenhaSenha

6 - pronto


