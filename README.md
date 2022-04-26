# sneakers-worker-demo

This is demo repo for proof of concept to try RabbitMQ with sneakers.

## build

```
docker-compose build
```

## run workers and RabbitMQ

```
docker-compsoe up
```


## enqueue job

```
docker-compose run --rm workers ruby enqueue.rb DemoWorker "Hello World!"
```
