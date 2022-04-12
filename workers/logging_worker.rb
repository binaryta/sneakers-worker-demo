load "config.rb"

class LoggingWorker
  include Sneakers::Worker

  from_queue nil,
    exchange: 'log',
    exchange_type: 'fanout',
    workers: 10,
    threads: 10,
    durable: true

  def work(msg)
    ptus msg
    ack!
  end
end
