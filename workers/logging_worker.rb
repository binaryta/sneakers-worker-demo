require 'sneakers/runner'
load "config.rb"

class LoggingWorker
  include Sneakers::Worker

  from_queue nil,
    exchange: 'log',
    workers: 10,
    threads: 10,
    durable: true

  def work(msg)
    ptus msg
    ack!
  end
end

r = Sneakers::Runner.new([LoggingWorker])
r.run
