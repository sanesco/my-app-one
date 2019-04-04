Rails.application.routes.draw do


  resources :products
  resources :welcome
  root 'welcome#index'
  # get 'welcome/:name', to: 'welcome#index', as: 'welcome'
  # get 'welcome/about', to: 'welcome#about'
  # get 'welcome/contact_us', to: 'welcome#contact_us'
  # get 'welcome/prices', to: 'welcome#prices'

  # get 'blog/index', to: 'blog#index'
  # get 'blog/new', to: 'blog#new'
  # get 'blog/show', to: 'blog#show'
  # get 'blog/edit', to: 'blog#edit'
  # get 'blog/updated'
  # get 'blog/delete'
  resources :blog
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
