class MateriasController < ApplicationController
	before_action :set_materia, only: [:show, :edit, :update, :destroy]

	def new
		@materia = Materia.new
	end

	def create
    @materia = Materia.new(materia_params)

    respond_to do |format|
      if @materia.save
        format.html { redirect_to @materia, notice: 'Materia criada com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @materia.update(materia_params)
        format.html { redirect_to @materia, notice: 'Materia atualizada com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  def index
    @materias = Materia.all

  end

  def show
  end


	private
    # Use callbacks to share common setup or constraints between actions.
    def set_materia
      @materia = Materia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def materia_params
      params.require(:materia).permit(:descricao, :professor, :curso)
    end
end
