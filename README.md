# openedr-setup

Esse script é utilizado para realizar a instalação e configuração dos projetos OpendEDR e Atomic Red Team no sistema operacional Windows 10. 

# Pré-requisito

* O monitoramento em tempo real do antivírus do Windows 10 deve ser desabilitado temporáriamente para instalação do Atomic Red Team conforme image abaixo:

![Virus e Threat protection settings](https://github.com/diego962/openedr-setup/blob/main/assets/file1.png)

* A política de bloqueio para execução de script powershell deve estar como Bypass ou Unrestricted.

# Recomendações

A utilização desse script deve ser realizada em um ambiente de testes de preferência em uma máquina virtual não sendo recomendado sua execução em um ambiente de produção ou em um computador pessoal.

# Referências

* https://github.com/redcanaryco/atomic-red-team
* https://github.com/ComodoSecurity/openedr
* https://www.cyberhuntingguide.net/atomic-red-team.html
