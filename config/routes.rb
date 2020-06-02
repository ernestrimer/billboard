Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :ranks do
    resources :artists do
      #resource :comments
      # dont' want too many layers of nesting!
    end
  end
  
  resource :artists do
    resources :songs do
      #resource :comments
      # dont' want too many layers of nesting!
    end
  end
end


