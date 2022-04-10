require 'sneakers'

Sneakers.configure(
  amqp:    ENV["RABBITMQ_URL"],
  workers: ENV["SNEAKERS_WORKERS_SIZE"] || 1,
  threads: ENV["SNEAKERS_THREADS_SIZE"] || 1,
)
