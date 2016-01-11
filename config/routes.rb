Rails.application.routes.draw do

  get 'static_page/about'

  root 'index#index'
  get 'index/index'

end
