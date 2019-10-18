class ProfesionalesController < ApplicationController
  before_action :set_profesionale, only: [:show, :edit, :update, :destroy]

  # GET /profesionales
  # GET /profesionales.json
  def index
    @profesionales = Profesionale.all
  end

  # GET /profesionales/1
  # GET /profesionales/1.json
  def show
  end

  # GET /profesionales/new
  def new
    @profesionale = Profesionale.new
  end

  # GET /profesionales/1/edit
  def edit
  end

  # POST /profesionales
  # POST /profesionales.json
  def create
    @profesionale = Profesionale.new(profesionale_params)

    respond_to do |format|
      if @profesionale.save
        format.html { redirect_to @profesionale, notice: 'Profesional fue creado con éxito.' }
        format.json { render :show, status: :created, location: @profesionale }
      else
        format.html { render :new }
        format.json { render json: @profesionale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profesionales/1
  # PATCH/PUT /profesionales/1.json
  def update
    respond_to do |format|
      if @profesionale.update(profesionale_params)
        format.html { redirect_to @profesionale, notice: 'Profesional se actualizó con éxito.' }
        format.json { render :show, status: :ok, location: @profesionale }
      else
        format.html { render :edit }
        format.json { render json: @profesionale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profesionales/1
  # DELETE /profesionales/1.json
  def destroy
    @profesionale.destroy
    respond_to do |format|
      format.html { redirect_to profesionales_url, notice: 'Profesional fue destruido con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profesionale
      @profesionale = Profesionale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profesionale_params
      params.require(:profesionale).permit(:rut, :nombre, :segundo_nombre, :apellido_paterno, :apellido_materno, :profesion, :descripcion)
    end
end
