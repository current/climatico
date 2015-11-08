require 'forecast_io'

module ForecastIO
  class << self
    @@fake = {}

    def forecast(latitude, longitude, options = {})
      Hashie::Mash.new(currently: @@fake)
    end

    def method_missing(name, value)
      if name =~ /(.*)=$/
        @@fake[$1] = value
      else
        super
      end
    end
  end
end
