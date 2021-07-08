src/main/resources/application.properties 
修改参数为 file.upload-dir=/persistent/sap


mvn clean package -DskipTest


az cloud set -n AzureCloud

az spring-cloud app create -n sapdemo --enable-persistent-storage --assign-endpoint true

az spring-cloud app deploy  --jar-path .\target\file-demo-0.0.1-SNAPSHOT.jar -n sapdemo
#-g rgdev -s ascsap 

az spring-cloud app deploy  --jar-path ..\file-demo-0.0.1-SNAPSHOT.jar -n sapdemo

az spring-cloud app deploy  --jar-path C:\workspaces\galanz\demo-0.0.1-SNAPSHOT.jar -n sapdemo --jvm-options="-Djava.library.path=/persistent/sap"

az spring-cloud app logs -f -n sapdemo --lines 1000