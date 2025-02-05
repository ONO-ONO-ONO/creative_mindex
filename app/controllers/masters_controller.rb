class MastersController < ApplicationController
  def index
    @index_flg = false
    if params[:q].present?
      @index_flg = true if params[:q][:big_schema].present?
      @index_flg = true unless params[:q][:name_cont].nil?
      params[:button] = params[:q][:big_schema] if params[:q][:big_schema].present?
      @schema = check_models(params[:button])
    elsif params[:button].present?
      @index_flg = true
      @schema = check_models(params[:button])
    end

    # 想定外の@schemaになっている場合はTOP画面に戻す
    if @index_flg && approval_models.exclude?(@schema)
      redirect_to "/"
    else
      @q = if @index_flg
        @schema.constantize.ransack(params[:q])
      else
        Category.ransack(params[:q])
      end
      @masters = @q.result.order(:sort).page(params[:page]).per(10)
    end
  end

  def edit
    @schema = check_models(params[:schema])
    # 想定外の@schemaになっている場合はTOP画面に戻す
    if approval_models.exclude?(schema)
      redirect_to "/"
    else
      @master = @schema.constantize.find(params["id"])
    end
  end

  def update
    schema = check_models(params[:button])
    # 想定外の@schemaになっている場合はTOP画面に戻す
    if approval_models.exclude?(schema)
      redirect_to "/"
    else
      @master = schema.constantize.find(params["id"])
      @master.name = params[schema.constantize.lower_case_table_name.to_sym]["name"]
      @master.sort = params[schema.constantize.lower_case_table_name.to_sym]["sort"]
      if schema == "RedList"
        @master.big_code = params[schema.constantize.lower_case_table_name.to_sym]["big_code"]
      else
        @master.eng_name = params[schema.constantize.lower_case_table_name.to_sym]["eng_name"]
        @master.major_flg = params[schema.constantize.lower_case_table_name.to_sym]["major_flg"]
      end
      if @master.save!
        redirect_to masters_path(button: schema), notice: "更新が成功しました" # 更新成功時
      else
        render :edit
      end
    end
  end

  def destroy
    schema = check_models(params[:schema])
    # 想定外の@schemaになっている場合はTOP画面に戻す
    if approval_models.exclude?(schema)
      redirect_to "/"
    else
      @master = schema.constantize.find(params[:id])
      @master.destroy
      redirect_to masters_url, notice: "レコードが削除されました。"
    end
  end

  def check_models(model)
    case model
    when "Domain"
      "Domain"
    when "Kingdom"
      "Kingdom"
    when "SuperPhylum"
      "SuperPhylum"
    when "Phylum"
      "Phylum"
    when "SubPhylum"
      "SubPhylum"
    when "SuperClasses"
      "SuperClasses"
    when "Classes"
      "Classes"
    when "SubClasses"
      "SubClasses"
    when "InfraClasses"
      "InfraClasses"
    when "SuperOrder"
      "SuperOrder"
    when "Order"
      "Order"
    when "SubOrder"
      "SubOrder"
    when "InfraOrder"
      "InfraOrder"
    when "SuperFamily"
      "SuperFamily"
    when "Family"
      "Family"
    when "SubFamily"
      "SubFamily"
    when "Genuses"
      "Genuses"
    when "SubGenuses"
      "SubGenuses"
    when "Species"
      "Species"
    when "SubSpecies"
      "SubSpecies"
    when "RedList"
      "RedList"
    when "RedListBigName"
      "RedListBigName"
    else
      "return"
    end
  end

  private

  def approval_models
    %w[
      Domain
      Kingdom
      SuperPhylum
      Phylum
      SubPhylum
      SuperClasses
      Classes
      SubClasses
      InfraClasses
      SuperOrder
      Order
      SubOrder
      InfraOrder
      SuperFamily
      Family
      SubFamily
      Genuses
      SubGenuses
      Species
      SubSpecies
      RedList
      RedListBigName
    ].freeze
  end
end
