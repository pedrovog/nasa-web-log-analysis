# Resolução do Desafio Semantix para Engenheiro de Dados

# Organização do Repositório

Esse repositório está organizado em dois sub-diretorios, são eles:

- **questionario**: onde estão as respostas para as questões apresentadas, organizadas dentro do arquivo Readme.md.
- **notebooks**: onde está o jupyter notebook, **NASA_web_log_analysis.ipynb**, com o desenvolvimento lógico e as respostas das análises apresentadas.

# Clonando o repositório.

    git clone https://github.com/pedrovog/nasa-web-log-analysis.git

# Dependências.

- Docker
- Make

# Executando o container.

Por motivos de compatibilidade realizei o desenvolvimento do desafio usando o Docker e a imagem **jupyter/all-spark-notebook**, que contem um ambiente com pyspark e jupyter notebook.
Para executar a imagem, dentro da pasta do código, entrar com o seguinte comando:

    make run

Quando o container estiver apto a receber conexões a seguinte linha irá aparecer:

    Browse to http://127.0.0.1:8888/?token=<some-token>

Ou o log do container pode ser consultado:

    docker logs semantix

Procurar pela linha:

    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://127.0.0.1:8888/?token=<some-token>

Feito isso:
- Copiar e colar o endeço web no browser.
- Navegar para a pasta **work**.
- Clicar em **NASA_web_log_analysis.ipynb**, o notebook deverá ser aberto.

