class FurnitureItemsController < ApplicationController
  before_action :set_furniture_item, only: [:show, :edit, :update, :destroy]

  # GET /furniture_items
  # GET /furniture_items.json
  def index
    @furniture_items = FurnitureItem.all
  end

  # GET /furniture_items/1
  # GET /furniture_items/1.json
  def show
  end

  # GET /furniture_items/new
  def new
    @furniture_item = FurnitureItem.new
  end

  # GET /furniture_items/1/edit
  def edit
  end

  # POST /furniture_items
  # POST /furniture_items.json
  def create
    @furniture_item = FurnitureItem.new(furniture_item_params)

    respond_to do |format|
      if @furniture_item.save
        format.html { redirect_to @furniture_item, notice: 'Furniture item was successfully created.' }
        format.json { render :show, status: :created, location: @furniture_item }
      else
        format.html { render :new }
        format.json { render json: @furniture_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /furniture_items/1
  # PATCH/PUT /furniture_items/1.json
  def update
    respond_to do |format|
      if @furniture_item.update(furniture_item_params)
        format.html { redirect_to @furniture_item, notice: 'Furniture item was successfully updated.' }
        format.json { render :show, status: :ok, location: @furniture_item }
      else
        format.html { render :edit }
        format.json { render json: @furniture_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /furniture_items/1
  # DELETE /furniture_items/1.json
  def destroy
    @furniture_item.destroy
    respond_to do |format|
      format.html { redirect_to furniture_items_url, notice: 'Furniture item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_furniture_item
      @furniture_item = FurnitureItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def furniture_item_params
      params.fetch(:furniture_item, {})
    end
end
