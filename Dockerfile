FROM ubuntu:19.04

USER root
RUN apt update -y && apt install -y ansible && apt-get clean

CMD ["/bin/bash"]
