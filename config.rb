require 'sneakers'

Sneakers.configure(
  amqp:    ENV["RABBITMQ_URL"],
  workers: ENV["SNEAKERS_WORKERS_SIZE"] || 2,
  threads: ENV["SNEAKERS_THREADS_SIZE"] || 2,
  heartbeat: 0,
)
