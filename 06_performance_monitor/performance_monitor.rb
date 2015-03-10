def measure(n=1)
  runtimes = []
  n.times do
    time_start = Time.now
    yield
    time_end = Time.now
    runtimes << time_end - time_start
  end
  runtimes.inject(:+) / runtimes.length
end