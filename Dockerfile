FROM condaforge/mambaforge:latest

# metadata
LABEL maintainer="Benjamin Rose <Ben_Rose@baylor.edu>"
LABEL version="v1.0.alpha"
LABEL release-date="2024-03-03"
LABEL description="My default science container using conda-forge/mamba."

RUN mamba create -n sci -y -c conda-forge \
python \
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
