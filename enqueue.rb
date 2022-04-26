worker = ARGV[0]
job    = ARGV[1]

worker_klasses = []

Dir.glob("./workers/*").each do |file|
  require file

  worker_klasses << File.basename(file).gsub(File.extname(file), "").split("_").map(&:capitalize).join
end

Object.const_get(worker).enqueue(job)
