# NDW EDC Edge
This part is meant for deployment at a consumer to connect to the EDC Connector of NDW that acts as a publisher of data.  
Using this guide, anyone was able connect to our connector and explore the data, while it was live.  
**Currently the connector is down.**
  
Forked from: https://gitlab.int.smartlivingnext.de/data-space/components/docker/edc

## Connecting to the NDW connector
In order to connect to the NDW connector, you will need to request credentials and host a connector on a publicly accessible url.

## Setting up the connector
First, you will need to request credentials from the NDW team. You will receive:
- A participant_id and client_id, to be used in the docker-compose.yml
- A public key and private key. These should be stored in a vault.properties file within this directory.

When all settings are set, deploy the docker-compose.yml: 
```bash 
docker-compose up -d
```

## Explore the catalog
You should now be able to see the data that is available in the 'Federated Catalog' page of the portal.

## Requirements to negotiate a contract
However, negotiating a contract will not be possible. For this to work, the NDW connector will need to be able to reach your connector. That is what the EDC_HOSTNAME, EDC_DATAPLANE_API_PUBLIC_BASEURL and EDC_DSP_CALLBACK_ADDRESS are for. 
Make sure your DNS and network settings allow these two endpoints to be reached from the outside. Once this is done,
contract negotiation should work.

## Getting the data
- Negotiate a contract
- Once FINALIZED, open the contract agreement. Here, you will find a 'Transfer Dataset' button. Click it.
- Choose Transfer Type 'HttpData-PULL' and save. 
- Wait a few moments for the data request to be created. Once the data request ID appears, click it. 
- Here you will find the details of the data request. Click 'Download' to download the data.