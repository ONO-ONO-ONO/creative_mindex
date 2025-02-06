class CategoriesController < ApplicationController
  def index
    @q = Category.ransack(params[:q])
    @category = @q.result.order(:sort)
  end

  def set_category
    @schema_name = Category.find(params[:q][:big_schema]).small_schema
    redirect_to "/#{@schema_name}s"
  end

  # def edit
  #   @schema = Category.find(params[:schema]).big_schema
  #   @master = @schema.constantize.find(params["id"])
  # end

  # def update
  #   schema = Category.find(params[:button]).big_schema
  #   @master = schema.constantize.find(params["id"])
  #   @master.name = params[schema.constantize.lower_case_table_name.to_sym]["name"]
  #   @master.sort = params[schema.constantize.lower_case_table_name.to_sym]["sort"]
  #   if schema == "RedList"
  #     @master.big_code = params[schema.constantize.lower_case_table_name.to_sym]["big_code"]
  #   else
  #     @master.eng_name = params[schema.constantize.lower_case_table_name.to_sym]["eng_name"]
  #     @master.major_flg = params[schema.constantize.lower_case_table_name.to_sym]["major_flg"]
  #   end
  #   if @master.save!
  #     redirect_to masters_path(button: params[:button]), notice: "更新が成功しました" # 更新成功時
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   schema = Category.find(params[:schema]).big_schema
  #   @master = schema.constantize.find(params[:id])
  #   @master.destroy
  #   redirect_to masters_url, notice: "レコードが削除されました。"
  # end

  # private

  # def approval_models =  Category.all.map { |r| r.big_schema }.freeze
end

# ToDo
# エラーの埒があかなければ
# 各マスタmodelのroutesを用意する方法に切り替える
