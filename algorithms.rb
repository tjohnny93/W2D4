
def my_min1(arr)
  # min_index = 0
  
  arr.each do |el|
    # arr.each do |el2|
    #   if el
    # end
    return el if arr.all? { |el2| el <= el2 }

  end
  nil
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min1(list)  # =>  -5

def my_min2(arr)
  min = arr.shift

  arr.each do |el|
    min = el if el < min
  end

  min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min2(list)  # =>  -5

def largest_contiguous_subsum(arr)
  subsets = []
  arr.each_with_index do |n1, i|
      subsets << [n1]
    arr.each_with_index do |n2, j|
      if i < j
        subsets << arr[i..j]
      end
    end
  end
    
  p subsets
  subsets.map(&:sum).max
end

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list)

def better_lcs(arr)
  largest_sum = arr.first
  current_sum = 0
  arr.each do |n|
    current_sum += n
    largest_sum = current_sum  if current_sum > largest_sum
    current_sum = 0 if current_sum < 0
  end
  return largest_sum
end
  


p better_lcs(list)

