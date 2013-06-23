class Bowling

  def score (pins)
    total = 0
    i = 0

    while i < pins.length do
      if IsStrike?(pins[i])
        total += ScoreStrike(pins, i)
        i += 1
        next
      elsif IsSpare?(pins[i], pins[i+1])
        total += 10 + pins[i+2]
      else
        total += pins[i] + pins[i+1]
      end
      i += 2
    end
    total
  end


  def ScoreStrike(pins, index)
    10 + pins[index+1].to_i + pins[index+2].to_i
  end


  def IsStrike?(pin)
    if pin == 10
      return true
    end
    false
  end


  def IsSpare?(pin1, pin2)
    #isSpare = false
    if pin1 + pin2 == 10
      return true
    false
    end
  end

end


