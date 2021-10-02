class InvitadosController < ApplicationController
  def index
       @invitados = Invitado.all
  end
end
