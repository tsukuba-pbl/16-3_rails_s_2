class FtLayoutsController < ApplicationController
  before_action :set_ft_layout, only: [:show, :edit, :update, :destroy]

  # GET /ft_layouts
  # GET /ft_layouts.json
  def index
    @ft_layouts = FtLayout.all
  end

  # GET /ft_layouts/1
  # GET /ft_layouts/1.json
  def show
  end

  # GET /ft_layouts/new
  def new
    @ft_layout = FtLayout.new
  end

  # GET /ft_layouts/1/edit
  def edit
  end

  # POST /ft_layouts
  # POST /ft_layouts.json
  def create
    @ft_layout = FtLayout.new(ft_layout_params)

    respond_to do |format|
      if @ft_layout.save
        format.html { redirect_to @ft_layout, notice: 'Ft layout was successfully created.' }
        format.json { render :show, status: :created, location: @ft_layout }
      else
        format.html { render :new }
        format.json { render json: @ft_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ft_layouts/1
  # PATCH/PUT /ft_layouts/1.json
  def update
    respond_to do |format|
      if @ft_layout.update(ft_layout_params)
        format.html { redirect_to @ft_layout, notice: 'Ft layout was successfully updated.' }
        format.json { render :show, status: :ok, location: @ft_layout }
      else
        format.html { render :edit }
        format.json { render json: @ft_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ft_layouts/1
  # DELETE /ft_layouts/1.json
  def destroy
    @ft_layout.destroy
    respond_to do |format|
      format.html { redirect_to ft_layouts_url, notice: 'Ft layout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def last
    @ft_layout = (FtLayout.order(created_at: :desc))[0]
    render 'show'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ft_layout
      @ft_layout = FtLayout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ft_layout_params
      params.require(:ft_layout).permit(:room_id)
    end
end
