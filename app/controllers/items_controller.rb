class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :move_f, :move_b, :edit, :update, :destroy]
  before_action :set_team, only: [:new, :edit, :create, :update, :move_f, :move_b, :destroy]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to team_item_path(@team, @item), notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def move_f
    if @item.to_do?
      @item.busy!
    elsif @item.busy?
      @item.done! 
    end
    redirect_to team_path(@team)
  end

  def move_b
    if @item.done?
      @item.busy!
    elsif @item.busy?
      @item.to_do! 
    end
    redirect_to team_path(@team)
  end

  def edit
  end

  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to team_path(@team), notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to team_path(@team), notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    def set_team
      @team = Team.find(params[:team_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:title, :description, :postition, :team_id, :bootsy_image_gallery_id)
    end
end
