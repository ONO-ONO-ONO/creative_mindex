module CategoriesLogic
  extend ActiveSupport::Concern

  # 共通で使いたいメソッド
  def index
    @plural_schema_name = set_master.plural_schema
    @schema_name = set_master.name

    @q = uppercase_master.ransack(params[:q])
    @masters = @q.result.order(:sort).page(params[:page]).per(10)
  end

  def edit
    @plural_schema_name = set_master.plural_schema
    @schema_name = set_master.name

    @master = uppercase_master.find(params["id"])
  end

  def update
    @master = uppercase_master.find(params["id"])
    @master.name = params[uppercase_master.lower_case_table_name.to_sym]["name"]
    @master.sort = params[uppercase_master.lower_case_table_name.to_sym]["sort"]
    if @master.class.name == "RedList"
      @master.big_code = params[uppercase_master.lower_case_table_name.to_sym]["big_code"]
    else
      @master.eng_name = params[uppercase_master.lower_case_table_name.to_sym]["eng_name"]
      @master.major_flg = params[uppercase_master.lower_case_table_name.to_sym]["major_flg"]
    end
    if @master.save!
      redirect_to "/#{set_master.plural_schema}", notice: "更新が成功しました" # 更新成功時
    else
      render :edit
    end
  end

  def destroy
    @master = uppercase_master.find(params[:id])
    @master.destroy
    redirect_to "/#{set_master.plural_schema}", notice: "レコードが削除されました。"
  end

  private
  def set_master
    Category.find_by(plural_schema: controller_name)
  end

  def uppercase_master
    set_master.big_schema.constantize
  end
end
