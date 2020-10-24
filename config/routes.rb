Rails.application.routes.draw do
  # get 'inquiries/new'
  # get 'inquiries/confirm'
  # get 'inquiries/thanks'
  # root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'inquiries#new'
  # 入力した項目を送信するのでPOST
  post 'inquiries/confirm'
  post 'inquiries/thanks'
end
