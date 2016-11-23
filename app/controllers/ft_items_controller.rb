class FtItemsController < ApplicationController
  before_action :set_ft_item, only: [:show, :edit, :update, :destroy]

  # GET /ft_items
  # GET /ft_items.json
  def index
    @ft_items = FtItem.all
  end

  # GET /ft_items/1
  # GET /ft_items/1.json
  def show
  end

  # GET /ft_items/new
  def new
    @ft_item = FtItem.new
  end

  # GET /ft_items/1/edit
  def edit
  end

  # POST /ft_items
  # POST /ft_items.json
  def create
    @ft_item = FtItem.new(ft_item_params)

    respond_to do |format|
      if @ft_item.save
        format.html { redirect_to @ft_item, notice: 'Ft item was successfully created.' }
        format.json { render :show, status: :created, location: @ft_item }
      else
        format.html { render :new }
        format.json { render json: @ft_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ft_items/1
  # PATCH/PUT /ft_items/1.json
  def update
    respond_to do |format|
      if @ft_item.update(ft_item_params)
        format.html { redirect_to @ft_item, notice: 'Ft item was successfully updated.' }
        format.json { render :show, status: :ok, location: @ft_item }
      else
        format.html { render :edit }
        format.json { render json: @ft_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ft_items/1
  # DELETE /ft_items/1.json
  def destroy
    @ft_item.destroy
    respond_to do |format|
      format.html { redirect_to ft_items_url, notice: 'Ft item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ft_item
      @ft_item = FtItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ft_item_params
      params.require(:ft_item).permit(:item_id, :top, :left, :ft_layout_id)
    end
end
