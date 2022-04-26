load "config.rb"

class LoggingWorker
  include Sneakers::Worker

  from_queue nil,
    exchange: 'log',
    exchange_type: 'fanout',
    threads: 10,
    queue_options: {
      durable: false
    }

  def work(msg)
    puts msg
    ack!
  end
end
