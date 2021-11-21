FROM debian:bullseye-slim

RUN apt update -y && apt upgrade -y

RUN apt-get install -y gnupg software-properties-common curl unzip

RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -

RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

RUN apt-get update -y  &&  apt-get install terraform -y

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

RUN unzip awscliv2.zip

RUN ./aws/install

CMD ["sleep", "infinity"]