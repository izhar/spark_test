#!/bin/bash  

docker run --rm -it --network spark_network izhar/spark:latest /spark/bin/spark-shell
