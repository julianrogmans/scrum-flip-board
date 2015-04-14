class SectionsController < ApplicationController
  def index
  	@sections = Section.all
  	@items = Item.all.order('updated_at ASC')
  end

  def show
  end
end
