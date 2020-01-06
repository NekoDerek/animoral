Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'sessions/new'
  # get 'страница' => 'имя контроллера # метод'
  get 'sitemap' => 'pages#sitemap'
  get 'index' => 'pages#index'
  get 'about' => 'pages#about'
  get 'home' => 'pages#home'
  get 'help' => 'pages#help'
  get 'contact' => 'pages#contact'
  get 'signup' => 'users#new'
  get 'jobs' => 'pages#jobs'
  post 'signup' => 'users#create'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  delete 'destroy' => 'sessions#delete'
  resources :posts
  resources :users
  #rails d controller Dara
end
