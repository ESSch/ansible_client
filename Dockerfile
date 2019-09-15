FROM ubuntu:19.04

USER root
RUN apt update -y && \
	apt install -y ansible && \
	apt install -y python && \
	apt install -y python3-pip && \
	pip3 install --upgrade pip && \
	pip3 install packaging && \
	pip3 install msrestazure && \
	pip3 install ansible[azure] && \
	apt-get clean

CMD ["/bin/bash"]
