require 'sneakers'

Sneakers.configure(
  amqp:    ENV["RABBITMQ_URL"],
  workers: ENV["SNEAKERS_WORKERS_SIZE"] || 2,
  threads: ENV["SNEAKERS_THREADS_SIZE"] || 2,
  # https://www.rabbitmq.com/heartbeats.html
  #   Several years worth of feedback from the users and client library maintainers suggest that values lower than 5 seconds are fairly likely to cause false positives,
  #   and values of 1 second or lower are very likely to do so.
  #   Values within the 5 to 20 seconds range are optimal for most environments.
  heartbeat: 20,
)
