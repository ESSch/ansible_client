sudo apt update -y;
sudo apt install -y docker.io;
sudo docker run -d --privileged --restart=unless-stopped --net=host \
  -v /etc/kubernetes:/etc/kubernetes \
  -v /var/run:/var/run rancher/rancher-agent:v2.2.8 \
  --server https://40.121.181.59 \
  --token jwc4c6msfwwmc5fpjpsprtgvlzlfnh9g5tbmgrhs4gj22c9tb7d5ks \
  --ca-checksum 598d544d5f0bb4fe09a06cf9a753f90890c95fd6e8dd89e5ad71abf7ff1d5194 \
  --etcd --worker;
