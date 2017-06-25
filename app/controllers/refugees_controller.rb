class RefugeesController < ApplicationController
  before_action :set_refugee, only: [:show, :edit, :update, :destroy]

  # GET /refugees
  # GET /refugees.json
  def index
    @refugees = Refugee.all
  end

  # GET /refugees/1
  # GET /refugees/1.json
  def show
  end

  # GET /refugees/new
  def new
    @refugee = Refugee.new
  end

  # GET /refugees/1/edit
  def edit
  end

  # POST /refugees
  # POST /refugees.json
  def create
    @refugee = Refugee.new(refugee_params)

    respond_to do |format|
      if @refugee.save
        format.html { redirect_to @refugee, notice: 'Refugee was successfully created.' }
        format.json { render :show, status: :created, location: @refugee }
      else
        format.html { render :new }
        format.json { render json: @refugee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /refugees/1
  # PATCH/PUT /refugees/1.json
  def update
    respond_to do |format|
      if @refugee.update(refugee_params)
        format.html { redirect_to @refugee, notice: 'Refugee was successfully updated.' }
        format.json { render :show, status: :ok, location: @refugee }
      else
        format.html { render :edit }
        format.json { render json: @refugee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /refugees/1
  # DELETE /refugees/1.json
  def destroy
    @refugee.destroy
    respond_to do |format|
      format.html { redirect_to refugees_url, notice: 'Refugee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refugee
      @refugee = Refugee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def refugee_params
      params.require(:refugee).permit(:name, :email, :origin, :language, :problems, :password, :password_confirmation, :phone)
    end
end
