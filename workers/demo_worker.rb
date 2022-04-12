load "config.rb"

class DemoWorker
  include Sneakers::Worker
  from_queue :demo

  def work(msg)
    puts "[x] received: " + msg 
  end 
end
