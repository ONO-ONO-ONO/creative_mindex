Rails.application.routes.draw do
  # TOP画面(http://localhost:3000)
  get "/" => "home#top"

  # 動物図鑑
  resources :animals do
    collection do
      post :save_category_modal
    end
  end
  # マスタ
  resources :masters, except: [ :new, :create, :show ]
end
