class WeatherApi
  def temperature(city)
    30
  end

  def condition(city)
    "Sunny"
  end
end

class WeatherReport
  def initialize(api)
    @api = api
  end

  def report(city)
    temperature = @api.temperature(city)
    condition = @api.condition(city)

    "#{city}: #{temperature}°C, #{condition}"
  end
end