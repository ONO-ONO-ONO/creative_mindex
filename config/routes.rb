Rails.application.routes.draw do
  # TOP画面(http://localhost:3000)
  get "/" => "home#top"
end
