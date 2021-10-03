class InvitadosController < ApplicationController
    
  
  #READ
  
  def index
       @invitados = Invitado.all
        @partys = Party.all
  end
  
  # CREATE NEW
  
  def new
    @invitado = Invitado.new
  end

  def create
      
      @party = Party.find(params[:party_id])
      
      @invitado = @party.invitados.create(invitado_params)
      redirect_to party_path(@party)

    #if @invitado.save
      #redirect_to action: "index"
    #else
      #render :new
    #end
  end
  
  #UPDATE AND EDIT
  
  def edit
    @invitado = Invitado.find(params[:id])
  end

  def update
    @invitado = Invitado.find(params[:id])

    if @invitado.update(invitado_params)
      redirect_to action: "index"
    else
      render :edit
    end
  end
  
  def destroy
     @invitado = Invitado.find(params[:id])
     @invitado.destroy

     redirect_to root_path
   end
  
  
  
  
  private
     def invitado_params
       params.require(:invitado).permit(:first_name, :last_name)
     end
  
end
