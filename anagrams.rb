
def anagram?(str1, str2)
  substrings = str1.split("").permutation.map { |str| str.join("") }
  substrings.include?(str2)
end

p anagram?("gizmo", "sally")    #=> false
p anagram?("elvis", "lives")    #=> true

def second_anagram?(str1, str2)
  str2 = str2.split("")
  str1.each_char do |char|
    str2.delete_at(str2.find_index(char)) if !str2.find_index(char).nil?
  end

  return true if str2.empty?
  false

end
  
p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true

def third_anagram?(str1, str2)
  str1.split("").sort == str2.split("").sort
end
  
p third_anagram?("gizmo", "sally")    #=> false
p third_anagram?("elvis", "lives")    #=> true

def fourth_anagram?(str1, str2)
  hash1 = Hash.new(0)

  str1.each_char do |char|
    hash1[char] += 1
  end
  str2.each_char do |char|
    hash1[char] -= 1
  end

  hash1.values.all? { |val| val == 0 }
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true
