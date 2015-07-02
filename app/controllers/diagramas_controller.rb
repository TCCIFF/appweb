class DiagramasController < ApplicationController
  before_action :set_diagrama, only: [:show, :edit, :update, :destroy]

  # GET /diagramas
  # GET /diagramas.json
  def index
    @diagramas = Diagrama.all
  end

  # GET /diagramas/1
  # GET /diagramas/1.json
  def show
  end

  # GET /diagramas/new
  def new
    @diagrama = Diagrama.new
  end

  # GET /diagramas/1/edit
  def edit
  end

  # POST /diagramas
  # POST /diagramas.json
  def create
    @diagrama = Diagrama.new(diagrama_params)

    respond_to do |format|
      if @diagrama.save
        format.html { redirect_to @diagrama, notice: 'Diagrama was successfully created.' }
        format.json { render :show, status: :created, location: @diagrama }
      else
        format.html { render :new }
        format.json { render json: @diagrama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diagramas/1
  # PATCH/PUT /diagramas/1.json
  def update
    respond_to do |format|
      if @diagrama.update(diagrama_params)
        format.html { redirect_to @diagrama, notice: 'Diagrama was successfully updated.' }
        format.json { render :show, status: :ok, location: @diagrama }
      else
        format.html { render :edit }
        format.json { render json: @diagrama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagramas/1
  # DELETE /diagramas/1.json
  def destroy
    @diagrama.destroy
    respond_to do |format|
      format.html { redirect_to diagramas_url, notice: 'Diagrama was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diagrama
      @diagrama = Diagrama.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diagrama_params
      params.require(:diagrama).permit(:nomeDiagrama, :tipoDiagrama, :arquivo)
    end
end
