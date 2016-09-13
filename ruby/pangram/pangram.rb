module BookKeeping
  VERSION = 2
end

class Pangram
  def Pangram.is_pangram?(test_string)
    test_string = test_string.downcase
    last_index = test_string.length - 1
    found_letters = {}
    found_count = 0

    0.upto(last_index) do |index|
      letter = test_string[index]
      if letter =~ /[a-z]/
        if found_letters[letter]
          next
        else
          found_letters[letter] = true
          found_count += 1
        end
      end

      return true if found_count >= 26
    end

    puts found_letters
    puts found_count
    return false
  end
end
