<img src="https://raw.githubusercontent.com/Caiqe/projeto-individual-sptech/refs/heads/main/public/assets/icon/logoSite.png" width="600px">

_ROTEIRANDO_

_PROJETO DE 1ºSEMESTRE ANÁLISE E DESENVOLVIMENTO DE SISTEMAS_

<hr>

_CONTEXTO_

Esse projeto tem como objetivo testar os conhecimentos absorvidos durante o primeiro semestre e colocar em prática o que foi ensinado.

Além disto, serve como uma forma de conhecer melhor quem é o Desenvolvedor *Caique Gomes de Souza*, pois se trata de um tema que me cativa: Praia.

O projeto se trata de um site construido em *Javascript*, *HTML*, *CSS* e utiliza a API *WEB-DATA-VIZ*.
Ele traz conceitos como persistência de dados utilizando *MySQL* e máquinas virtuais utilizando *VirtualBox* e o S.O *Lubuntu*.

O sistema conta com funcionalidades como: *Login*/*Cadastro*, *Planejamento de Viagens*, *Metas e Orçamentos* e visualização de gráficos em uma *Dashboad* por meio da biblioteca *ChartJS*.


# Como usar

1. Clone este repositório em sua máquina.


1. Crie, no Banco de Dados, as tabelas necessárias para o funcionamento deste projeto.
- Siga as instruções no arquivo **/src/database/script-tabelas.sql** e **/src/database/script-insert.sql**


3. Acesse o arquivo **app.js** e parametrize o ambiente.
- Se você estiver utilizando o Ambiente de Produção (remoto), comente a linha 2 e deixe habilitada a linha 1 onde está o valor **var ambiente_processo = 'producao';**
- Se você estiver utilizando o Ambiente de Desenvolvimento (local), comente a linha 1 e deixe habilitada a linha 2 onde está o valor **var ambiente_processo = 'desenvolvimento';**

4. Adicione as credenciais de Banco de Dados no arquivo **.env** ou em **.env.dev**, seguindo as instruções neste.

5. Acesse este repositório no seu terminal (GitBash ou VSCode) e execute os comandos abaixo:

```
npm i
``` 
_O comando acima irá instalar as bibliotecas necessárias para o funcionamento do projeto. As bibliotecas a serem instaladas estão listadas no arquivo **package.json** então é muito importante que este não seja alterado. Será criada uma nova pasta/diretório chamado **node_modules** quando o comando for finalizado, que é onde as bibliotecas estão localizadas. Não altere a pasta/diretório._

```
npm start
``` 

_O comando acima irá iniciar seu projeto e efetuar os comandos de acordo com a sua parametrização feita nos passos anteriores._

6. Para "ver" seu projeto funcionando, acesse em seu navegador o caminho **informado no terminal**.

7. Caso queira parar a execução, tecle **CTRL+C** no terminal em que o projeto está rodando.

