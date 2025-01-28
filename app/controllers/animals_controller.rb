class AnimalsController < ApplicationController
  include CategoryModal # Concernsを読み込む
  before_action :shared_method, only: [ :new, :edit, :create ]

  def index
    @index_type = "list"
    @q = Animal.ransack(params[:q]) # 検索オブジェクトを作成
    @animals = @q.result.active_all.order(:name) # 検索結果を取得
  end

  def new
    @form_title = "新規作成"
    @select_tab = "basic"
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to animal_path(@animal.id)
    else
      @form_title = "新規作成"
      @select_tab = "basic"
      render :new # def create内の@~~をビューに渡す
    end
  end

  def show
    @form_title = "詳細"
    @select_tab = "basic"
    @animal = Animal.find(params["id"])
  end

  def edit
    @form_title = "編集"
    @select_tab = "basic"
    @animal = Animal.find(params["id"])
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update(animal_params)
      redirect_to animal_path(@animal.id), notice: "更新が成功しました" # 更新成功時
    else
      @form_title = "編集"
      @select_tab = "basic"
      render :edit # def create内の@~~をビューに渡す
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.update(deleted_at: Time.zone.now)
    redirect_to animals_url, notice: "動物が削除されました。"
  end

  def save_category_modal
    referer_path = URI(request.referer).path
    previous_route = Rails.application.routes.recognize_path(referer_path)
    set_form_object =
      if previous_route[:action] == "new"
        Animal.new
      else
        Animal.find(previous_route[:id])
      end

    items = {
      name: params["name"],
      eng_name: params["eng_name"],
      code: "",
      major_flg: true,
      sort: nil
    }
    category_create(items, params["master_selecta"], set_form_object)
  end

  private

  def animal_params
    params.require(:animal).permit(
      :name,
      :scientific_name,
      :wa_name,
      :kanji_name,
      :avg_long,
      :min_long,
      :max_long,
      :avg_long_tail,
      :min_long_tail,
      :max_long_tail,
      :avg_tall,
      :min_tall,
      :max_tall,
      :avg_weight,
      :min_weight,
      :max_weight,
      :domain_code,
      :kingdom_code,
      :super_phylum_code,
      :phylum_code,
      :sub_phylum_code,
      :super_class_code,
      :class_code,
      :sub_class_code,
      :infra_class_code,
      :super_order_code,
      :order_code,
      :sub_order_code,
      :infra_order_code,
      :super_family_code,
      :family_code,
      :sub_family_code,
      :genus_code,
      :sub_genus_code,
      :species_code,
      :sub_species_code,
      :red_list_code,
      :note
      )
  end
end
