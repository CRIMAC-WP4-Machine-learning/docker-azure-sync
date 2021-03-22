FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install -y git python3 python3-pip fuse rsync \
    && cd /tmp \
    && git clone https://github.com/microsoft/AzureFilesFUSE.git \
    && cd AzureFilesFUSE \
    && pip3 install -r requirements.txt \
    && mkdir /azureshare

ENV ACCOUNT=""
ENV SHARENAME=""
ENV SAS=""

COPY run.sh /tmp/run.sh

CMD /tmp/run.sh && bash