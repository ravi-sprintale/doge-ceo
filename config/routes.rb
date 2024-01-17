Rails.application.routes.draw do
  
  root 'dogs#index' 

  #dogs controller routes 
  resources :dogs, only: [:index] do
    collection do
      get 'fetch_breed'
    end
  end

end
