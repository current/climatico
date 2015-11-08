class Recomendation
  attr_reader :tips

  def self.for(forecast)
    next_hours = forecast.hourly.data.first(8)

    precipProbability = next_hours.map { |f| f.precipProbability }.max
    apparentTemperature = next_hours.map { |f| f.apparentTemperature }.min
    cloudCover = next_hours.map { |f| f.cloudCover }.min

    new.tap do |r|
      r.tips << :umbrella if precipProbability > 0.2
      r.tips << :sweater if apparentTemperature < 20
      r.tips << :sunglasses if cloudCover < 0.2
    end
  end

  def initialize
    @tips = []
  end
end
