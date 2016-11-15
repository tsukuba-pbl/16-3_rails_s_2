class UxsersController < ApplicationController
  before_action :set_uxser, only: [:show, :edit, :update, :destroy]

  # GET /uxsers
  # GET /uxsers.json
  def index
    @uxsers = Uxser.all
  end

  # GET /uxsers/1
  # GET /uxsers/1.json
  def show
  end

  # GET /uxsers/new
  def new
    @uxser = Uxser.new
  end

  # GET /uxsers/1/edit
  def edit
  end

  # POST /uxsers
  # POST /uxsers.json
  def create
    @uxser = Uxser.new(uxser_params)

    respond_to do |format|
      if @uxser.save
        format.html { redirect_to @uxser, notice: 'Uxser was successfully created.' }
        format.json { render :show, status: :created, location: @uxser }
      else
        format.html { render :new }
        format.json { render json: @uxser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uxsers/1
  # PATCH/PUT /uxsers/1.json
  def update
    respond_to do |format|
      if @uxser.update(uxser_params)
        format.html { redirect_to @uxser, notice: 'Uxser was successfully updated.' }
        format.json { render :show, status: :ok, location: @uxser }
      else
        format.html { render :edit }
        format.json { render json: @uxser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uxsers/1
  # DELETE /uxsers/1.json
  def destroy
    @uxser.destroy
    respond_to do |format|
      format.html { redirect_to uxsers_url, notice: 'Uxser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def hoge
    @hoge = "@@@@@@@@@@@@@@"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uxser
      @uxser = Uxser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uxser_params
      params.require(:uxser).permit(:name, :avatar, :remove_avatar, :avatar_cache, :zahyo_x, :zahyo_y, :zahyo_z, :offset)
    end
end
