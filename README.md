Sinatra Bug Exemplar
====================

1. Run server

```
docker build -t test:sinatrapoc server && docker run --rm -ti -p 4567:4567 test:sinatrapoc bundle exec /app/api.rb
```

2. Run client

```
./client.rb
```

3. Note corruption in hash output