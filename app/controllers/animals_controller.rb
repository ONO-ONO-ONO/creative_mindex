class AnimalsController < ApplicationController
  def index
    @index_type = "list"
    @animals = Animal.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
