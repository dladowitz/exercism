module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Hamming
  def Hamming.compute(original_strand, copied_strand)
    validate_arguments(original_strand, copied_strand)

    errors = 0
    original_strand.length.times do |index|
      errors += 1 unless original_strand[index] == copied_strand[index]
    end

    errors
  end

  def Hamming.validate_arguments(original_strand, copied_strand)
    unless original_strand.length == copied_strand.length
      raise ArgumentError
    end
  end
end
