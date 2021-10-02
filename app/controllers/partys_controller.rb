class PartysController < ApplicationController
  def index
      @partys = Party.all
  end
  def show
    @party = Party.find(params[:id])
  end
end
