export neme=worker1;
az group create -l "East US" -n ${neme};
az vm create -n ${neme} -g ${neme} --image 'Canonical:UbuntuServer:16.04-LTS:16.04.201611220' --generate-ssh-keys;
# todo: get ip
cat init_worker.sh | ssh -i ~/.ssh/id_rsa azureadmin@ip
