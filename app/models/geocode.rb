class Geocode
  attr_reader :address, :result

  API_URL = "https://maps.googleapis.com/maps/api/geocode/json?address=%s"

  def initialize(address)
    @address = address

    process
  end

  def json_hash
    { latitude: latitude, longitude: longitude }
  end

  private

  def evaluate_api_url
    API_URL % [URI.encode(address)]
  end

  def process
    @result = JSON[RestClient.get(evaluate_api_url)]
  end

  def latitude
    base['lat']
  end

  def longitude
    base['lng']
  end

  def base
    result['results'][0]['geometry']['location']
  end
end
