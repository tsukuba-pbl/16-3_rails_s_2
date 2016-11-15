class PlacedFurnitureItemsController < ApplicationController
  before_action :set_placed_furniture_item, only: [:show, :edit, :update, :destroy]

  # GET /placed_furniture_items
  # GET /placed_furniture_items.json
  def index
    @placed_furniture_items = PlacedFurnitureItem.all
  end

  # GET /placed_furniture_items/1
  # GET /placed_furniture_items/1.json
  def show
  end

  # GET /placed_furniture_items/new
  def new
    @placed_furniture_item = PlacedFurnitureItem.new
  end

  # GET /placed_furniture_items/1/edit
  def edit
  end

  # POST /placed_furniture_items
  # POST /placed_furniture_items.json
  def create
    @placed_furniture_item = PlacedFurnitureItem.new(placed_furniture_item_params)

    respond_to do |format|
      if @placed_furniture_item.save
        format.html { redirect_to @placed_furniture_item, notice: 'Placed furniture item was successfully created.' }
        format.json { render :show, status: :created, location: @placed_furniture_item }
      else
        format.html { render :new }
        format.json { render json: @placed_furniture_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /placed_furniture_items/1
  # PATCH/PUT /placed_furniture_items/1.json
  def update
    respond_to do |format|
      if @placed_furniture_item.update(placed_furniture_item_params)
        format.html { redirect_to @placed_furniture_item, notice: 'Placed furniture item was successfully updated.' }
        format.json { render :show, status: :ok, location: @placed_furniture_item }
      else
        format.html { render :edit }
        format.json { render json: @placed_furniture_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /placed_furniture_items/1
  # DELETE /placed_furniture_items/1.json
  def destroy
    @placed_furniture_item.destroy
    respond_to do |format|
      format.html { redirect_to placed_furniture_items_url, notice: 'Placed furniture item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_placed_furniture_item
      @placed_furniture_item = PlacedFurnitureItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def placed_furniture_item_params
      params.require(:placed_furniture_item).permit(:layout_id, :furniture_item_id, :x_coordinate_data, :y_coordinate_data, :z_coordinate_data, :a_rotation, :b_rotation, :c_rotation)
    end
end
