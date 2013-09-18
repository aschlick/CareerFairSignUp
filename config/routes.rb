CareerFairSignUp::Application.routes.draw do

  resources :students do
    get 'random_winner'
  end

  root :to => 'students#new'

end
