require 'spec_helper'

describe ForecastAdapter do

  let(:api_call) {
    double(
      precipProbability: 0.26,
      apparentTemperature: 9.99,
      cloudCover: 0.3
    )
  }
  let(:adapter)  { ForecastAdapter.new(api_call) }

  it 'rains when precipProbability is higher than 25%' do
    expect(adapter).to be_rain
  end

  it 'is cold when temperature is lower than 10 C' do
    expect(adapter).to be_cold
  end

  it 'is mild when temperature is between 10 and 20 C' do
    expect(api_call).to receive(:apparentTemperature) { 12 }
    expect(adapter).to be_mild
  end

  it 'is hot when temperature is higher than 20 C' do
    expect(api_call).to receive(:apparentTemperature) { 21 }
    expect(adapter).to be_hot
  end

  it 'has clear sky' do
    expect(adapter).to be_clear_sky
  end
end
