Rails.application.routes.draw do

    get 'welcome/index'

    resources :wishes

    root 'welcome#index'

end
