# frozen_string_literal: true
require 'sneakers'
require 'sneakers/runner'
require 'logger'

Sneakers.configure(
  amqp:    ENV["RABBITMQ_URL"],
  workers: ENV["SNEAKERS_WORKERS_SIZE"] || 1,
  threads: ENV["SNEAKERS_THREADS_SIZE"] || 1,
)

workers = ENV["SNEAKERS_WORKERS"] || Dir.glob("./workers/*")

r = Sneakers::Runner.new(workers)
r.run
