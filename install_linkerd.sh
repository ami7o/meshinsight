# Install Linkerd
cd $MESHINSIGHT_DIR
kubectl version --short
curl --proto '=https' --tlsv1.2 -sSfL https://run.linkerd.io/install | sh
echo "export PATH=$PATH:~/.linkerd2/bin" > ~/.bashrc
source ~/.bashrc
linkerd version
linkerd check --pre
linkerd install --crds | kubectl apply -f -
linkerd install | kubectl apply -f -
linkerd check
