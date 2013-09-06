class KrindlesController < ApplicationController
  before_action :set_krindle, only: [:show, :edit, :update, :destroy]

  # GET /krindles
  # GET /krindles.json
  def index
    @krindles = Krindle.all
  end

  # GET /krindles/1
  # GET /krindles/1.json
  def show
  end

  # GET /krindles/new
  def new
    @krindle = Krindle.new
  end

  # GET /krindles/1/edit
  def edit
  end

  # POST /krindles
  # POST /krindles.json
  def create
    @krindle = Krindle.new(krindle_params)

    respond_to do |format|
      if @krindle.save
        format.html { redirect_to @krindle, notice: 'Krindle was successfully created.' }
        format.json { render action: 'show', status: :created, location: @krindle }
      else
        format.html { render action: 'new' }
        format.json { render json: @krindle.errors, status: :unprocessable_entity }
      end
    end
  end



  # PATCH/PUT /krindles/1
  # PATCH/PUT /krindles/1.json
  def update
    respond_to do |format|
      if @krindle.update(krindle_params)
        format.html { redirect_to @krindle, notice: 'Krindle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @krindle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /krindles/1
  # DELETE /krindles/1.json
  def destroy
    @krindle.destroy
    respond_to do |format|
      format.html { redirect_to krindles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_krindle
      @krindle = Krindle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def krindle_params
      params.require(:krindle).permit(:name, :message)
    end
end
