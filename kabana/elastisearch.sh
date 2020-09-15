helm repo add elastic https://helm.elastic.co
helm install --name elasticsearch elastic/elasticsearch \
--set \
clusterName="elasticsearch",\
persistence.enabled="true",\
storageClassName="nfs-client",\
service.type="NodePort",\
service.nodePort="32590"
