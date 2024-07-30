# TORA-OLM

## Usage
```shell
$ mv .env.example .env && vim .env # modify environment variables
$ docker-compose up -d
```

Currently supports mainnet and sepolia. 

You can modify the `services.confirm.command` in docker-compose.yml to specify the chain to listen to.
