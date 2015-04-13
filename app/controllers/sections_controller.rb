class SectionsController < ApplicationController
  def index
  	@sections = Section.all
  	@items = Item.all
  end

  def show
  end
end
