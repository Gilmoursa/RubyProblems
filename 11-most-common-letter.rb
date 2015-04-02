# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  common_letter = nil
  common_count = nil
  i = 0
  while i < string.length
    count = 0
    b = 0
    while b < string.length
      if string[b] == string[i]
        count+=1
      end
      b+=1
    end
    if (common_letter == nil) || (count > common_count)
      common_letter = string[i]
      common_count = count
    end
    i += 1
  end
  return [common_letter,common_count]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
