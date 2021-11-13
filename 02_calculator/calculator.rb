def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(num_arr)
  num_arr.reduce(0) {|sum, num| sum + num}
end

def multiply(*num_arr)
  num_arr.reduce(:*)
end

def power(x, y)
  x ** y
end

def factorial(int)
  return 1 if int == 0
  int * factorial(int - 1)
end