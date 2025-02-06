class CategoriesController < ApplicationController
  def index
    @q = Category.ransack(params[:q])
    @category = @q.result.order(:sort)
  end

  def set_category
    @schema_name = Category.find(params[:q][:big_schema]).small_schema
    redirect_to "/#{@schema_name}s"
  end
end
