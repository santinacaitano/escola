class UsuariosController < ApplicationController
	 before_action :set_usuario, only: [:show, :edit, :update, :destroy]

	def new
		@usuario = Usuario.new
	end

	def create
    @usuario = Usuario.new(usuario_params)

    respond_to do |format|
      if @usuario.save
        format.html { redirect_to @usuario, notice: 'Usuário criado com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: 'Usuário atualizada com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  def index
    @usuarios = Usuario.all

  end

  def show
    @usuario = Usuario.find(params[:id])
  end


	private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:login, :nome, :email, :perfil, :status)
    end

end
