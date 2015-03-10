def reverser
  yield.split(" ").map { |word| word.reverse }.join(" ")
end

def adder(num=1)
  yield + num
end

def repeater(iterations=1)
  iterations.times { yield }
end