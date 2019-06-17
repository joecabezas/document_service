Rails.application.routes.draw do
  root controller: :documents, action: :index
  resources :documents do
    get 'versions/new'
    post 'versions', controller: :versions, action: :create
  end
end
