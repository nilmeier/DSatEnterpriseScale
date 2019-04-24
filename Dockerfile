FROM continuumio/anaconda3:5.3.0

# Install Java 8
RUN apt-get update && apt-get install -y openjdk-8-jdk

# Install Apache Spark
RUN wget -nv --show-progress --progress=bar:force:noscroll https://archive.apache.org/dist/spark/spark-2.3.0/spark-2.3.0-bin-hadoop2.7.tgz && \
  tar -x -f spark-2.3.0-bin-hadoop2.7.tgz -v && rm spark-2.3.0-bin-hadoop2.7.tgz

ENV SPARK_HOME=/spark-2.3.0-bin-hadoop2.7
ENV SPARK_OPTS='--master=local[*]'

# Create conda env
RUN conda create -n py35 python=3.5 anaconda
RUN ["/bin/bash", "-c", "source activate py35 && \
                         pip install toree pyspark==2.3.0 tensorflow pixiedust && \
                         jupyter toree install --interpreters=Scala,PySpark,SparkR,SQL"]

# Copy over notebooks
RUN mkdir notebooks
COPY . /notebooks

# Launch Jupyter Notebooks
WORKDIR /notebooks
CMD ["/bin/bash", "-c", "source activate py35 && \
                         jupyter notebook --ip 0.0.0.0 --no-browser --allow-root"]
