# flood-risk
Model predicting flood risk for specified geometry.


Useful commands:

create network named `flood`:

```
docker network create flood
```

list docker networks:
```
docker network ls
```

compose up containers assigned to specific profile:
```
docker compose --profile db up -d
```

remove postgres volume:
```
docker volume rm postgres-db-volume
```
