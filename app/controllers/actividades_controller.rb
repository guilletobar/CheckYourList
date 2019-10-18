class ActividadesController < ApplicationController
  before_action :set_actividade, only: [:show, :edit, :update, :destroy]

  # GET /actividades
  # GET /actividades.json
  def index
    @actividades = Actividade.all
  end

  # GET /actividades/1
  # GET /actividades/1.json
  def show
  end

  # GET /actividades/new
  def new
    @actividade = Actividade.new
  end

  # GET /actividades/1/edit
  def edit
  end

  # POST /actividades
  # POST /actividades.json
  def create
    @actividade = Actividade.new(actividade_params)

    respond_to do |format|
      if @actividade.save
        format.html { redirect_to @actividade, notice: 'Actividad fue creada con éxito.' }
        format.json { render :show, status: :created, location: @actividade }
      else
        format.html { render :new }
        format.json { render json: @actividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actividades/1
  # PATCH/PUT /actividades/1.json
  def update
    respond_to do |format|
      if @actividade.update(actividade_params)
        format.html { redirect_to @actividade, notice: 'Actividad se actualizó con éxito' }
        format.json { render :show, status: :ok, location: @actividade }
      else
        format.html { render :edit }
        format.json { render json: @actividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actividades/1
  # DELETE /actividades/1.json
  def destroy
    @actividade.destroy
    respond_to do |format|
      format.html { redirect_to actividades_url, notice: 'Actividad fue destruida con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actividade
      @actividade = Actividade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actividade_params
      params.require(:actividade).permit(:nombre, :descripcion, :fecha, :tipo_actividad)
    end
end
