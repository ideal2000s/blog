Rails.application.routes.draw do
  root 'articles#index'
  # match '/person', to: 'articles#show'

  resources 'articles' do
    resources 'comments'
  end

  resources :persons, controller: :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
