class GlossariosController < ApplicationController
  before_action :set_glossario, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /glossarios
  # GET /glossarios.json
  def index
    @glossarios = Glossario.all
  end

  # GET /glossarios/1
  # GET /glossarios/1.json
  def show
  end

  # GET /glossarios/new
  def new
    @glossario = Glossario.new
  end

  # GET /glossarios/1/edit
  def edit
  end

  # POST /glossarios
  # POST /glossarios.json
  def create
    @glossario = Glossario.new(glossario_params)

    respond_to do |format|
      if @glossario.save
        format.html { redirect_to @glossario, notice: 'Glossario was successfully created.' }
        format.json { render :show, status: :created, location: @glossario }
      else
        format.html { render :new }
        format.json { render json: @glossario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glossarios/1
  # PATCH/PUT /glossarios/1.json
  def update
    respond_to do |format|
      if @glossario.update(glossario_params)
        format.html { redirect_to @glossario, notice: 'Glossario was successfully updated.' }
        format.json { render :show, status: :ok, location: @glossario }
      else
        format.html { render :edit }
        format.json { render json: @glossario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glossarios/1
  # DELETE /glossarios/1.json
  def destroy
    @glossario.destroy
    respond_to do |format|
      format.html { redirect_to glossarios_url, notice: 'Glossario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glossario
      @glossario = Glossario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def glossario_params
      params.require(:glossario).permit(:siglaGlossario, :descricaoGlossario)
    end
end
