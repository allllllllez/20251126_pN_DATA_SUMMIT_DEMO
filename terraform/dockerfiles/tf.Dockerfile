FROM debian:bookworm-slim

ARG terraform_version="1.9.8"

RUN apt-get update && \
    apt-get install -y sudo make curl unzip git jq && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    curl -O "https://releases.hashicorp.com/terraform/${terraform_version}/terraform_${terraform_version}_linux_amd64.zip" && \
    unzip ./terraform_${terraform_version}_linux_amd64.zip -d /usr/local/bin/ && \
    rm -rf ./terraform_${terraform_version}_linux_amd64.zip

ENTRYPOINT ["/bin/bash", "--login"]
