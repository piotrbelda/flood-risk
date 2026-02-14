FROM apache/airflow:3.1.7

USER root

RUN apt update && apt install -y vim

USER airflow

COPY ./docker/airflow/requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt
