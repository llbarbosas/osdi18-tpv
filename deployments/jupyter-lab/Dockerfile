FROM jupyter/base-notebook

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    libfreetype6-dev \
    libpng-dev \
    gcc \
    g++ \
    libcairo2-dev \
    libcurl4-openssl-dev \
    gmpc-dev \
    libmpc-dev \
    libmpfr-dev \
    unixodbc-dev \
    pandoc \
    texlive-xetex \
    texlive-fonts-recommended \
    texlive-plain-generic \
    && rm -rf /var/lib/apt/lists/*

USER jovyan

WORKDIR /home/jovyan/work

COPY ./environment.yml .

RUN conda env create -f environment.yml
RUN source activate py2
RUN python -m ipykernel install --user --name py2 --display-name "Python 2 (py2)"
