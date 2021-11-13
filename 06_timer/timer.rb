class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    time_arr = []
    time_arr[0] = "%02d" % (seconds / 3600) 
    time_arr[1] = "%02d" % ((seconds / 60) % 60)
    time_arr[2] = "%02d" % (seconds % 60) 
    time_arr.join(":")
  end

end



