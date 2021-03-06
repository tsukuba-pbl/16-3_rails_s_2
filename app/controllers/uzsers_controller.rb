class UzsersController < ApplicationController
  before_action :set_uzser, only: [:show, :edit, :update, :destroy, :add_micropost_get]
  
  def add_micropost_get
    @msg = "wwwwwwwwwwwww"
    @micropost = @uzser.microposts.build
  end
  
  def add_micropost_post
    micropost_params = params.require(:micropost).permit(:content, :uzser_id)
    @micropost = Micropost.new(micropost_params)
    @micropost.save
    redirect_to @micropost.uzser
  end

  # GET /uzsers
  # GET /uzsers.json
  def index
    @uzsers = Uzser.all
  end

  # GET /uzsers/1
  # GET /uzsers/1.json
  def show
  end

  # GET /uzsers/new
  def new
    @uzser = Uzser.new
  end

  # GET /uzsers/1/edit
  def edit
  end

  # POST /uzsers
  # POST /uzsers.json
  def create
    @uzser = Uzser.new(uzser_params)

    respond_to do |format|
      if @uzser.save
        format.html { redirect_to @uzser, notice: 'Uzser was successfully created.' }
        format.json { render :show, status: :created, location: @uzser }
      else
        format.html { render :new }
        format.json { render json: @uzser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uzsers/1
  # PATCH/PUT /uzsers/1.json
  def update
    respond_to do |format|
      if @uzser.update(uzser_params)
        format.html { redirect_to @uzser, notice: 'Uzser was successfully updated.' }
        format.json { render :show, status: :ok, location: @uzser }
      else
        format.html { render :edit }
        format.json { render json: @uzser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uzsers/1
  # DELETE /uzsers/1.json
  def destroy
    @uzser.destroy
    respond_to do |format|
      format.html { redirect_to uzsers_url, notice: 'Uzser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uzser
      @uzser = Uzser.find(params[:id])
      @microposts = @uzser.microposts
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uzser_params
      params.require(:uzser).permit(:name, :name2, :name3)
    end
end
