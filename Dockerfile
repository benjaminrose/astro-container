FROM condaforge/mambaforge:latest

# metadata
LABEL org.opencontainers.image.authors="Benjamin Rose <Ben_Rose@baylor.edu>"
LABEL py_verion="3.13"
LABEL org.opencontainers.image.description="My default science/astro container using mambaforge. Uses Python 3.13."

WORKDIR /root

RUN apt update
RUN apt install -y vim

RUN mamba create -n sci -y -c conda-forge \
python=3.13 \
asdf \
astropy \
matplotlib \
numpy \
numpydoc \
pandas \
pymc \
pytest \
rich \
scipy \
seaborn \
# sncosmo \
sphinx \
statsmodels \
tqdm \
yaml

RUN echo "conda activate sci" >> ~/.bashrc
SHELL ["/bin/bash", "--login", "-c"]
