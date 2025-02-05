class MastersController < ApplicationController
  def index
    @index_flg = false
    # 一覧表示済画面からの呼び出しだったか確認
    if params[:q].present?
      params[:button] = params[:q][:big_schema] if params[:q][:big_schema].present?
    end

    # マスタが選択済かどうかを確認
    if params[:button].present?
      @index_flg = true
      @schema = Category.find(params[:button]).big_schema
    end

    # @index_flgがtrueの場合は一覧表示済画面用、falseの場合はマスタ選択画面用のロジックを実行
    @q = if @index_flg
      @schema.constantize.ransack(params[:q])
    else
      Category.ransack(params[:q])
    end
    @masters = @q.result.order(:sort).page(params[:page]).per(10)
  end

  def edit
    @schema = Category.find(params[:schema]).big_schema
    @master = @schema.constantize.find(params["id"])
  end

  def update
    schema = Category.find(params[:button]).big_schema
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
      redirect_to masters_path(button: params[:button]), notice: "更新が成功しました" # 更新成功時
    else
      render :edit
    end
  end

  def destroy
    schema = Category.find(params[:schema]).big_schema
    @master = schema.constantize.find(params[:id])
    @master.destroy
    redirect_to masters_url, notice: "レコードが削除されました。"
  end

  private

  def approval_models =  Category.all.map { |r| r.big_schema }.freeze
end
