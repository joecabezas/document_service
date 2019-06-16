Rails.application.routes.draw do
  resources :documents do
    get 'versions/new'
    post 'versions', controller: :versions, action: :create
  end
end
