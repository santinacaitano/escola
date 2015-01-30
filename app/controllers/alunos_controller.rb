class AlunosController < ApplicationController
  before_action :set_aluno, only: [:show, :edit, :update, :destroy]
  
  def index
    @alunos = Aluno.all

  end

  def show
  end

  def new
    @aluno = Aluno.new
  end


  def edit
  end

  def create
    @aluno = Aluno.new(aluno_params)

    respond_to do |format|
      if @aluno.save
        format.html { redirect_to @aluno, notice: 'Aluno criado com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @aluno.update(aluno_params)
        format.html { redirect_to @aluno, notice: 'Aluno atualizado com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @aluno.destroy
    respond_to do |format|
      format.html { redirect_to clientes_url, notice: 'Aluno excluido com sucesso.' }
    end
  end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_aluno
      @aluno = Aluno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aluno_params
      params.require(:aluno).permit(:nome, :matricula, :turma)
    end

end
