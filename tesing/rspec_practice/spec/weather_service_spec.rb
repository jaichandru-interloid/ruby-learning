# frozen_string_literal: true

require 'rspec'
require_relative '../lib/weather_service'

RSpec.describe WeatherReport do
  describe '#report' do
    it 'call temprature and condition and returns the correct report' do
      api = instance_double('WeatherApi')

      allow(api).to receive(:temperature).with('chennai').and_return(30)
      allow(api).to receive(:condition).with('chennai').and_return('Sunny')

      report = WeatherReport.new(api)

      result = report.report('chennai')

      expect(api).to have_received(:temperature).with('chennai')
      expect(api).to have_received(:condition).with('chennai')
      expect(result).to eq('chennai: 30°C, Sunny')
    end
  end
end
