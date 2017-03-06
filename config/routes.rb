Rails.application.routes.draw do
  resource :forecast
  resource :geocode
  root to: 'weathers#show'
end
