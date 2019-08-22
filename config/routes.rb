Rails.application.routes.draw do
  get 'user/index'
  get 'user/create'
  get 'user/show'
  get 'user/update'
  get 'user/destroy'
  get 'scoreboard/index'
  get 'scoreboard/create'
  get 'scoreboard/show'
  get 'scoreboard/update'
  get 'scoreboard/destroy'
  get 'gameboard/index'
  get 'gameboard/create'
  get 'gameboard/update'
  get 'gameboard/destroy'
  root 'pictures#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
