FROM python

#RUN apt-get update && apt-get install -y build-essentials && apt-get install -y wget && apt-get clean 

    #rm -rf /var/lib/apt/lists/*


#RUN apt-get update -y && apt install wget -y
WORKDIR /opt/conda
ENV CONDA_DIR /opt/conda
#RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /opt/conda/miniconda.sh && /usr/bin/sh /opt/conda/miniconda.sh -b -p /opt/conda
#ENV PATH=$CONDA_DIR/bin:$PATH
RUN conda update -n base -c defaults conda
RUN conda install -c anaconda flask && conda install -c anaconda psycopg2 && conda install -c anaconda pandas && conda install -c plotly plotly


