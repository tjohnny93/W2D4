
def bad_two_sum?(arr, target_sum)
  pairs = []

  arr.each_with_index do |el1, i|
    arr.each_with_index do |el2, j|
      pairs << [el1, el2] if i < j
    end
  end

  return true if pairs.any? { |pair| pair.sum == target_sum }
  false
end

arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

def sort_two_sum?(arr, target_sum)
  # arr.each_with_index do |ele, i|
  #   search_arr = arr.dup.delete_at(i)
  #   until search_arr.empty?
  #     mid = search_arr.length / 2
  #     return true if search_arr[mid] + ele == target_sum
  #     search_arr[mid] < target_sum 
  #     search_arr = arr[0...mid]
      
    arr = arr.sort
    low = 0
    high = arr.length - 1

    while low < high
      case arr[low] + arr[high] <=> target_sum
      when -1
        low += 1
      when 0
        return true
      when 1
        high -= 1
      end
    end
    false

  
end

p sort_two_sum?(arr, 6) # => should be true
p sort_two_sum?(arr, 10) # => should be false

def hash_two_sum?(arr, target_sum)
  hash = Hash.new(0)
  arr.map{|n| hash[n] = 0}

  # p hash
  arr.map{ |ele| 

    if hash.keys.include?(target_sum - ele)

      return true 
      
  }

  false
end

p hash_two_sum?(arr, 6) # => should be true
p hash_two_sum?(arr, 10) # => should be false