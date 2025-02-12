Rails.application.routes.draw do
  # TOP画面(http://localhost:3000)
  get "/" => "home#top"

  # 動物図鑑
  resources :animals do
    collection do
      post :save_category_modal
    end
  end

  # CSVインポート/エクスポート
  resources :csv_index, only: [ :index ] do
    collection do
      post :import
    end
  end

  # マスタ系
  resources :categories, only: [ :index ] do
    collection do
      get :set_category
    end
  end
  resources :domains, except: [ :new, :create, :show ]
  resources :kingdoms, except: [ :new, :create, :show ]
  resources :super_phylums, except: [ :new, :create, :show ]
  resources :phylums, except: [ :new, :create, :show ]
  resources :sub_phylums, except: [ :new, :create, :show ]
  resources :super_classes, except: [ :new, :create, :show ]
  resources :classes, except: [ :new, :create, :show ]
  resources :sub_classes, except: [ :new, :create, :show ]
  resources :infra_classes, except: [ :new, :create, :show ]
  resources :super_orders, except: [ :new, :create, :show ]
  resources :orders, except: [ :new, :create, :show ]
  resources :sub_orders, except: [ :new, :create, :show ]
  resources :infra_orders, except: [ :new, :create, :show ]
  resources :super_families, except: [ :new, :create, :show ]
  resources :families, except: [ :new, :create, :show ]
  resources :sub_families, except: [ :new, :create, :show ]
  resources :genuses, except: [ :new, :create, :show ]
  resources :sub_genuses, except: [ :new, :create, :show ]
  resources :species, except: [ :new, :create, :show ]
  resources :sub_species, except: [ :new, :create, :show ]
  resources :red_lists, except: [ :new, :create, :show ]
  resources :red_list_big_names, except: [ :new, :create, :show ]
end
