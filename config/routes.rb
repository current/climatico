Rails.application.routes.draw do
  resource :forecast
  root to: 'weathers#show'
end
