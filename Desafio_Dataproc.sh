###################
git clone https://github.com/marcelomarques05/dio-desafio-dataproc.git
cd dio-desafio-dataproc

ls
##contador.py  DIO.png  LICENSE  livro.txt  README.md

#listar buckets:
gsutil ls
#Saída:
##gs://bucket-desafio-dataproc/
##gs://dataproc-staging-us-central1-9611444002-79k845m9/
##gs://dataproc-temp-us-central1-9611444002-y2wep3xr/

sed -i 's/{SEU_BUCKET}/bucket-desafio-dataproc/' contador.py

#Copiar arquivos para o bucket:
gsutil cp contador.py livro.txt gs://bucket-desafio-dataproc/

###################
#Enviar job pelo Cloud Shell:
gcloud dataproc jobs submit pyspark gs://bucket-desafio-dataproc/contador.py \
--cluster=cluster-hadoop \
--region="us-central1"

###################
###################
##Enviar job
#
##ID do job:
#job-desafio
#
##Tipo de job:
#PySpark
#
##Arquivo Python principal:
#gs://bucket-desafio-dataproc/contador.py
###################
###################
sed 10q part-00000 > resultado.txt
###################
