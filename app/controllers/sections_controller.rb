class SectionsController < ApplicationController
  def index
  	@items = Item.all.order('updated_at ASC')
  end

  def show
  end
end
