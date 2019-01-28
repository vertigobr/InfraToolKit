# Imagem inicial ubuntu
FROM ubuntu:18.04
#update inicial
RUN apt update -y
#Instalando o ssh
RUN apt-get install ssh -y
#instalando o terraform
RUN wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip && apt install zip unzip -y && unzip terraform_0.11.11_linux_amd64.zip && mv terraform /usr/local/bin/

RUN apt-get update -y && apt-get install software-properties-common -y && apt-add-repository --yes --update ppa:ansible/ansible && apt-get install ansible -y



