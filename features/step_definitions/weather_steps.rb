Dado(/^que está (\d+) graus centigrados$/) do |value|
  ForecastIO.apparentTemperature = value.to_f
end

Dado(/^que está com (\d+)% de probabilidade de chuva$/) do |value|
  ForecastIO.precipProbability = value.to_f / 100
end

Dado(/^que está com (\d+)% de nuvens$/) do |value|
  ForecastIO.cloudCover= value.to_f / 100
end

Quando(/^eu acesso o aplicativo$/) do
  visit '/'
end

Então(/^a recomendação é de roupas normais$/) do
  expect(page).to_not have_selector('ul#tips li')
end

Então(/^a recomendação é de levar guarda\-chuva$/) do
  expect(page).to have_selector('[src$=umbrella\.png]')
end
