#Tipo de job:
Spark

#Classe principal ou jar:
org.apache.spark.examples.SparkPi

#Arquivos jar:
file:///usr/lib/spark/examples/jars/spark-examples.jar

#Argumentos:
2000

###################
###################
#Enviar job pelo Cloud Shell:
gcloud dataproc jobs submit spark \
--cluster=cluster-hadoop \
--region="us-central1" \
--class=org.apache.spark.examples.SparkPi \
--jars=file:///usr/lib/spark/examples/jars/spark-examples.jar \
-- 2000

#Resultado:
#Pi is roughly 3.1414951157074755
###################