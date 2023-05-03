# ANA 

## Conteúdo

- [Instalação](#instalacao)
- [Configuração](#configuracao)
- [Uso](#uso)
- [Suporte](#suporte)
- [Contribuição](#contribuicao)

## Instalação

Para seguir com os proximos passos, voce precisa baixar o conteudo desse repositorio. \
Execute o comando:
```sh
git-clone https://github.com/RoboticaMedicaFiap/ANA.git
```

## Configuração

Para cada sistema operacional, existe uma configuracao a ser feita.

### Windows

**1º Passo -** Instalacao das ferramentas de desenvolvimento;\
**2º Passo -** Instalacao das dependencias do projeto.\
\
**Obs.:** Se voce tem o **Python-3** e a biblioteca **Make** instalados, voce pode seguir para o **2º Passo**.

**1º Passo - Instalacao das ferramentas de desenvolvimento** \
Existe um arquivo setup que vai te ajudar nessa etapa. \
\
Abra o CMD em modo administrador, navegue ate a pasta do projeto e execute o comando:

```sh
    setup.bat
```
Esse script, vai instalar o Python-3 e Make para seguirmos com a execucao.\

\
**2º Passo - Instalacao das dependencias do projeto**\
Nesse ponto, nos ja estamos com o ambiente configurado para seguir com a execucao do projeto.\
Entao, vamos instalar as dependencias. Para isso, rode o comando:
```sh
    make
```

Esse comando vai instalar as dependencias do arquivo **requirements.txt**


### Linux

**1º Passo -** Configuração do ambiente;\
**2º Passo -** Instalação das dependencias do projeto.\
\
**Obs.:** Se voce tem o **Python-3** e a biblioteca **Make** instalados, voce pode seguir para o **2º Passo**.

**1º Passo - Configuração do ambiente** \
Existe um arquivo setup que vai te ajudar nessa etapa. \
\
Abra o terminal, navegue ate a pasta do projeto e execute o comando:

```sh
    ./setup.sh
```
Esse script, vai inserir um alias do Python3 no seu .bashrc\
Os sistemas operacionais derivados do Unix, macOS e algumas distribuições Linux possuem o python instalado por padrão; está incluído na instalação base. Porem, a versao esta depreciada.\
Para solucionar esse problema, atualizamos o alias "python" para executar o python3 e nao a versao depreciada.\
\
**2º Passo - Instalacao das dependencias do projeto**\
Nesse ponto, nos ja estamos com o ambiente configurado para seguir com a execucao do projeto.\
Entao, vamos instalar as dependencias. Para isso, rode o comando:
```sh
    make
```

Esse comando vai instalar as dependencias do arquivo **requirements.txt**

## Uso

Depois de instalar as dependencias, e hora de rodar nosso projeto.\
Execute o comando:
```sh
    make start
```

## Support

Please [open an issue](https://github.com/RoboticaMedicaFiap/ANA/issues/new) for support.

## Contributing

Please contribute using [Github Flow](https://guides.github.com/introduction/flow/). Create a branch, add commits, and [open a pull request](https://github.com/RoboticaMedicaFiap/ANA/compare/).