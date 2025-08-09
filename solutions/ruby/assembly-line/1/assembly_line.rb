class AssemblyLine
  CAR_PRODUCED_EACH_HOUR = 221
  SUCCESS_AT_5_TO_8 = 0.9
  SUCCESS_AT_9 = 0.8
  SUCCESS_AT_10 = 0.77
  MINUTES_IN_HOUR = 60
  
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if 1 <= @speed && @speed <= 4
      return @speed * CAR_PRODUCED_EACH_HOUR
    elsif 5 <= @speed && @speed <= 8
      return @speed * CAR_PRODUCED_EACH_HOUR * SUCCESS_AT_5_TO_8
    elsif @speed == 9
      return @speed * CAR_PRODUCED_EACH_HOUR * SUCCESS_AT_9
    else
      return @speed * CAR_PRODUCED_EACH_HOUR * SUCCESS_AT_10
    end
  end

  def working_items_per_minute
    production_rate_per_hour.to_i / MINUTES_IN_HOUR
  end
end
