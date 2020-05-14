Rails.application.routes.draw do
  root "homes#top"
  get "books/index" => "books#index"
  get "books/show" => "books#show"
  get "books/edit" => "books#edit"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
