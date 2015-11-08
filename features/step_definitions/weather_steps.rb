Dado(/^que está (\d+) graus centigrados$/) do |value|
  ForecastIO.temperature = value
end

Dado(/^que está com (\d+)% de probabilidade de chuva$/) do |value|
  ForecastIO.precipProbability = value
end

Dado(/^que está com (\d+) km de vento$/) do |value|
  ForecastIO.windSpeed = value
end

Quando(/^eu acesso o aplicativo$/) do
  visit '/'
  page.save_screenshot 'foo.png'
end

Então(/^a recomendação é de roupas normais$/) do
  expect(page).to have_content('Roupas normais')
end
