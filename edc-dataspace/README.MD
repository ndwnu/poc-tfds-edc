# NDW EDC Publisher
This part is meant for deployment at a provider to make their published data available and set policies to data.
**Currently the connector is down.**
  
Forked from: https://gitlab.int.smartlivingnext.de/data-space/components/docker/edc

## Setting up the connector as a new publisher
- First, you will need to create a realm within keycloak and change the values in `EDC_OAUTH_TOKEN_URL`, `EDC_OAUTH_PROVIDER_JWKS_URL` and `EDC_OAUTH_PROVIDER_AUDIENCE`
- You will need to create credentials for *edc-provider* as a `participant_id` and `client_id`, if you change the name *edc-provider*, make sure you adjust `nodes.json` as well
- You will need to create a public key and a private key. These should be stored in a `vault.properties` file within this directory.

When all settings are set, deploy the docker-compose.yml: 
```bash 
docker-compose up -d
```

