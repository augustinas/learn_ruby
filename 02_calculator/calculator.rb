def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(nums_arr)
  nums_arr.inject(0) { |sum, num| sum + num}
end

def multiply(*args)
  args.inject(1) { |sum, num| sum * num }
end

def power(a, b)
  a ** b
end

def factorial(num)
  return 1 if num == 0
  num * factorial(num - 1)
end