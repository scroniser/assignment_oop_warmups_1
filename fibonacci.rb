def fibs(n)
  arr = []
  start_array(n, arr)
end

def start_array(number, arr)
  case number
  when 0..1
    arr.push(number)
  when 2
    first_two
  else
    above_three(number, arr)
  end
end

def first_two(arr)
  arr.push(1,1)
end

def above_three(number, arr)
  #start the array with default values
  first_two(arr)
  (3..number).each do |x|
    arr.push(arr[x-3] + arr[x-2])
  end
  arr
end

#test
print fibs(89)