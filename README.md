# Hadoop_Dataproc_Google_Cloud_Platform_DIO

Projeto do Curso __*Criando um Ecossistema Hadoop Totalmente Gerenciado com Google Cloud Dataproc*__ do Bootcamp Data Engineer, promovido pela [Digital Innovation One](https://web.digitalinnovation.one/home).

![Dataproc](https://miro.medium.com/max/600/0*e0CbYZreCrhIBQGg.png)


## Desafio GCP Dataproc

O desafio consiste em efetuar um processamento de dados utilizando o produto Dataproc do GCP. Esse processamento irá simplesmente efetuar a contagem das palavras de um livro (arquivo de texto) e informar quantas vezes cada palavra aparece no mesmo.

---

### Etapas do Desafio

1. Criar um bucket no Cloud Storage
1. Atualizar o arquivo ```contador.py``` com o nome do Bucket criado nas linhas que contém ```{SEU_BUCKET}```.
1. Fazer o upload dos arquivos ```contador.py``` e ```livro.txt``` para o bucket criado (instruções abaixo)
    - https://cloud.google.com/storage/docs/uploading-objects

1. Utilizar o código em um cluster Dataproc, executando um Job do tipo PySpark chamando ```gs://{SEU_BUCKET}/contador.py```
1. O Job irá gerar uma pasta no bucket chamada ```resultado```. Dentro dessa pasta o arquivo ```part-00000``` irá conter a lista de palavras e quantas vezes ela é repetida em todo o livro.

### Resultados

1. Criar um arquivo chamado ```resultado.txt```. Dentro desse arquivo, colocar as 10 palavras que mais são usadas no livro, de acordo com o resultado do Job.
1. Inserir os arquivo ```resultado.txt``` e ```part-00000``` em um repositório.

---

NOTA: Se o Job mostrar um WARN de Interrupt, basta ignorar. Existe um bug no Hadoop que é conhecido. Isso não impacta no processamento.
