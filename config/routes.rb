Rails.application.routes.draw do
  
  root 'dogs#index' 

  #dogs controller routes 
  resources :dogs, only: [:index] do
    collection do
      get 'fetch_dogs'
    end
  end

end
