class RegraNegociosController < ApplicationController
  before_action :set_regra_negocio, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /regra_negocios
  # GET /regra_negocios.json
  def index
    @regra_negocios = RegraNegocio.all
  end

  # GET /regra_negocios/1
  # GET /regra_negocios/1.json
  def show
  end

  # GET /regra_negocios/new
  def new
    @regra_negocio = RegraNegocio.new
  end

  # GET /regra_negocios/1/edit
  def edit
  end

  # POST /regra_negocios
  # POST /regra_negocios.json
  def create
    @regra_negocio = RegraNegocio.new(regra_negocio_params)

    respond_to do |format|
      if @regra_negocio.save
        format.html { redirect_to @regra_negocio, notice: 'Regra negocio was successfully created.' }
        format.json { render :show, status: :created, location: @regra_negocio }
      else
        format.html { render :new }
        format.json { render json: @regra_negocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regra_negocios/1
  # PATCH/PUT /regra_negocios/1.json
  def update
    respond_to do |format|
      if @regra_negocio.update(regra_negocio_params)
        format.html { redirect_to @regra_negocio, notice: 'Regra negocio was successfully updated.' }
        format.json { render :show, status: :ok, location: @regra_negocio }
      else
        format.html { render :edit }
        format.json { render json: @regra_negocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regra_negocios/1
  # DELETE /regra_negocios/1.json
  def destroy
    @regra_negocio.destroy
    respond_to do |format|
      format.html { redirect_to regra_negocios_url, notice: 'Regra negocio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regra_negocio
      @regra_negocio = RegraNegocio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regra_negocio_params
      params.require(:regra_negocio).permit(:siglaRegra, :nomeRegra, :descricaoRegra)
    end
end
