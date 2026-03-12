az acr login -n <azure-acr>
docker build -t <azure-location>/ndw-edc-connector-portal:latest .
docker push <azure-location>/ndw-edc-connector-portal:latest