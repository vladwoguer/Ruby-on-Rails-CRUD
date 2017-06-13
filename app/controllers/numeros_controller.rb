class NumerosController < ApplicationController
  before_action :set_numero, only: [:show, :edit, :update, :destroy]

  # GET /numeros
  # GET /numeros.json
  def index
    @numeros = Numero.all
  end

  # GET /numeros/1
  # GET /numeros/1.json
  def show
  end

  # GET /numeros/new
  def new
    @numero = Numero.new
  end

  # GET /numeros/1/edit
  def edit
  end

  # POST /numeros
  # POST /numeros.json
  def create
    @numero = Numero.new(numero_params)

    respond_to do |format|
      if @numero.save
        format.html { redirect_to @numero, notice: 'Numero was successfully created.' }
        format.json { render :show, status: :created, location: @numero }
      else
        format.html { render :new }
        format.json { render json: @numero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /numeros/1
  # PATCH/PUT /numeros/1.json
  def update
    respond_to do |format|
      if @numero.update(numero_params)
        format.html { redirect_to @numero, notice: 'Numero was successfully updated.' }
        format.json { render :show, status: :ok, location: @numero }
      else
        format.html { render :edit }
        format.json { render json: @numero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /numeros/1
  # DELETE /numeros/1.json
  def destroy
    @numero.destroy
    respond_to do |format|
      format.html { redirect_to numeros_url, notice: 'Numero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_numero
      @numero = Numero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def numero_params
      params.require(:numero).permit(:numero)
    end
end
