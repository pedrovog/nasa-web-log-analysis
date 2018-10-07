
# Questionario do Desafio Semantix para Engenheiro de Dados


### 1 - Qual o objetivo do comando cache​ ​em Spark?

O objetivo do comando .cache() é persistir um dataset na memória comum do cluster Spark para que o mesmo possa ser reutilizado entre várias operações, permitindo que futuras ações executadas nesse dataset, ou derivados, sejam mais rápidas.

### 2 - O mesmo código implementado em Spark é normalmente mais rápido que a implementação equivalente em  MapReduce. Por quê?

A grande diferença é que o Spark processa dados em memória, além de o algoritimo de execução minimizar o acesso a disco, enquanto o MapReduce tem que persistir os dados de volta ao sistema de arquivo (HDFS) após cada ação de map ou reduce, introduzindo uma latência muito grande, dependendo da velocidade dos discos.

### 3 - Qual é a função do SparkContext​?

O **SparkContext** é um cliente de um ambiente de execução do Spark, que pode ser:
- local
- cluster:
	- Spark Standalone
	- Apache Mesos
	- Apache Hadoop Yarn

A partir do **SparkContext** é possivel criar RDDs, acessar serviços do Spark e executar trabalhos (Jobs).

### 4 - Explique com suas palavras o que é Resilient​ ​Distributed​ ​Datasets​ (RDD).

Os RDDs são a unidade primaria de dados do Spark, um RDD é uma coleção de dados espalhados entre uma ou mais partições e tem as seguintes características:

- **Resiliente**: tolerante a falha, tem a habilidade de recomputar partes perdidas do dado.
- **Distribuido**: os dados estão alocados em multiplos nós de um cluster
- **Dataset**: uma coleção de dados particionados com valores primitivos ou valores de valores, ex Tuplas ou outos objetos.

### 5 - GroupByKey​ ​é menos eficiente que reduceByKey​ ​em grandes dataset. Por quê?

Porque reduceByKey realiza a combinação de cada chave nas partições e só depois realiza I/O de rede, já o GroupByKey, necessita que os dados sejam trafegados pela rede antes de serem combinados, gerando um trafego maior de rede.

### 6 - Explique o que o código Scala abaixo faz.

    val textFile = sc.textFile("hdfs://...")
    val counts = textFile.flatMap(line => line.split(" "))
    .map(word => (word, 1))
    .reduceByKey(_ + _)
    counts.saveAsTextFile("hdfs://...")

O código está realizando uma contagem de palavras e salvando o resultado no HDFS.

 1. **sc.textFile**: Lê o arquivo do HDFS
 2. **flatMap**: para cada linha do arquivo separa as palavras por " "
 3. **map**: cria uma estrutura de dados de chave/valor, onde chave = palavra e valor = 1
 4. **reduceByKey**: realiza a junção das estruturas criadas em map por chave, ou seja, palavras e soma os valores, gerando o número de vezes em que elas apareceram no texto.
 5. **saveAsTextFile**: Salva o resultado com as palavras e a quantidade de vezes que ela apareceu.

