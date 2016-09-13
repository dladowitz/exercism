module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end


class Complement
  TRANSCRIBER = {"G" => "C", "C" =>"G", "T" => "A", "A" => "U"}

  def Complement.of_dna(dna_strand)
    rna_strand = dna_strand.split("").map do |nucleotide|
      if TRANSCRIBER[nucleotide]
        TRANSCRIBER[nucleotide]
      else
        return ""
      end
    end

    rna_strand.join("")
  end
end
