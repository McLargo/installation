#!/usr/bin/env bash

# install kubectl
echo "Installing kubectl..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# validate kubectl
echo "Validating kubectl..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client

# install kubectx
echo "Installing kubectx..."
sudo apt install kubectx

# References:
# - Install kubectl: https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
# - Merge multiple kubeconfig in one: https://able8.medium.com/how-to-merge-multiple-kubeconfig-files-into-one-36fc987c2e2f
