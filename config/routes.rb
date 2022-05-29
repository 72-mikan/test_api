Rails.application.routes.draw do
  get '/search' => "search#search", as: :search
  get '/search/:id' => "search#show", as: :search_shop
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
