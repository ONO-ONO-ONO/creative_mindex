class MastersController < ApplicationController
  def index
    @index_flg = false
    if params[:q].present?
      @index_flg = true if params[:q][:big_schema].present?
      @index_flg = true unless params[:q][:name_cont].nil?
      params[:button] = params[:q][:big_schema] if params[:q][:big_schema].present?
    elsif params[:button].present?
      @index_flg = true
    end

    @q = if @index_flg
      params[:button].constantize.ransack(params[:q])
    else
      Category.ransack(params[:q])
    end

    @masters = @q.result.order(:sort).page(params[:page]).per(10)
  end

  def edit
    schema = params[:schema] if params[:schema].present?
    @master = schema.constantize.find(params["id"])
  end

  def update
    schema = params[:button] if params[:button].present?
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

  def destroy
    @master = params[:schema].constantize.find(params[:id])
    @master.destroy
    redirect_to masters_url, notice: "レコードが削除されました。"
  end
end
