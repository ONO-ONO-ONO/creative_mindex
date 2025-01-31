Rails.application.routes.draw do
  # TOP画面(http://localhost:3000)
  get "/" => "home#top"

  resources :animals do
    collection do
      post :save_category_modal
    end
  end
end
