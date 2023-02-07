ARG base_image="continuumio/anaconda3:latest"

FROM $base_image

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH /opt/conda/bin:$PATH
ARG DEBIAN_FRONTEND=noninteractive

RUN conda create -y --name DRL_GR
RUN conda install -y --name DRL_GR python=3.7
RUN conda install -y --name DRL_GR matplotlib
RUN conda install -y --name DRL_GR numpy
RUN conda install -y --name DRL_GR scipy
RUN conda install -y --name DRL_GR basemap
RUN conda install -y --name DRL_GR pandas
RUN conda install -y --name DRL_GR pillow
RUN conda install -y --name DRL_GR keras
RUN conda install -y --name DRL_GR tensorflow=1.14

CMD ["/bin/bash"]