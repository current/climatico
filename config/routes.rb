Rails.application.routes.draw do
  resource :weathers
  root to: 'weathers#show'
end
