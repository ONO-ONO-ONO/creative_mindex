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
  end

  def update
  end

  def destroy
    @master = params[:schema].constantize.find(params[:id])
    @master.destroy
    redirect_to masters_url, notice: "レコードが削除されました。"
  end
end
