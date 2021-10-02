class InvitadosController < ApplicationController
  def index
       @invitados = Invitado.all
  end
  
  
  def new
    @invitado = Invitado.new
  end

  def create
    @invitado = Invitado.new(invitado_params)

    if @invitado.save
      redirect_to action: "index"
    else
      render :new
    end
  end
  
  private
     def invitado_params
       params.require(:invitado).permit(:first_name, :last_name)
     end
  
end
