module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

require 'pry'

class Gigasecond
  def Gigasecond.from(start_time)
    epoch_time = start_time.to_i
    gigatime = epoch_time + 1000000000
    Time.at gigatime
  end
end
