require 'sneakers/runner'

worker_klasses = []

Dir.glob("./workers/*").each do |file|
  require file

  worker_klasses << File.basename(file).gsub(File.extname(file), "").split("_").map(&:capitalize).join
end

workers = (worker_klasses & ARGV).map { |klass| Object.const_get(klass) } || worker_klasses

r = Sneakers::Runner.new(workers)
r.run
