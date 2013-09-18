CareerFairSignUp::Application.routes.draw do

  resources :students do
    get 'random_winner', on: :collection
  end

  root :to => 'students#new'

end
