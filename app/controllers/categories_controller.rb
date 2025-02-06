class CategoriesController < ApplicationController
  def index
    @q = Category.ransack(params[:q])
    @category = @q.result.order(:sort)
  end

  def set_category
    @schema_name = Category.find(params[:q][:big_schema]).plural_schema
    redirect_to "/#{@schema_name}"
  end
end
