class TurmasController < ApplicationController
	 before_action :set_turma, only: [:show, :edit, :update, :destroy]

	def new
		@turma = Turma.new
	end

	def create
    @turma = Turma.new(turma_params)

    respond_to do |format|
      if @turma.save
        format.html { redirect_to @turma, notice: 'Turma criada com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @turma.update(turma_params)
        format.html { redirect_to @turma, notice: 'Turma atualizada com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  def index
    @turmas = Turma.all

  end

  def show
  end


	private
    # Use callbacks to share common setup or constraints between actions.
    def set_turma
      @turma = Turma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turma_params
      params.require(:turma).permit(:turno, :sala, :materia, :professor)
    end

end
