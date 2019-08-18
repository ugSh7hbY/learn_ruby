
class Timer
  def initialize
    @seconds = 0
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def seconds
    @seconds
  end

  def padded num
    if num.to_s.length == 1
      num = '0' + num.to_s
    elsif
      num = num.to_s
    end
    num
  end

  def time_string
    time = @seconds
    hours = time / (60 * 60)
    minutes = (time / 60) - (hours * 60)
    seconds = time - (hours * 60 * 60) - (minutes * 60)
    string = "#{self.padded(hours)}:#{self.padded(minutes)}:#{self.padded(seconds)}"
  end
end
