class AnimalsController < ApplicationController
  def index
    @index_type = "list"
    @animals = Animal.all
  end

  def new
    @form_title = "新規作成"
    @animal = Animal.new
  end

  def create
  end

  def edit
    @form_title = "編集"
  end

  def update
  end

  def delete
  end
end
