# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n), where n is the length of my_phrase
# Space complexity: O(1)
def palindrome_check(my_phrase)
  return false if my_phrase == nil

  first_index_to_compare = 0
  last_index_to_compare = my_phrase.length - 1

  until first_index_to_compare > last_index_to_compare
    if my_phrase[first_index_to_compare] == " "
      first_index_to_compare += 1
    elsif my_phrase[last_index_to_compare] == " "
      last_index_to_compare -= 1
    else
      return false if my_phrase[first_index_to_compare] != my_phrase[last_index_to_compare]

      first_index_to_compare += 1
      last_index_to_compare -= 1
    end
  end

  return true
end
