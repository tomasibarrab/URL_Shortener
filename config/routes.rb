Rails.application.routes.draw do
  root 'urls#index'
  resources :urls
  get '*url_short' => 'urls#redirect_to_long_url'
end
