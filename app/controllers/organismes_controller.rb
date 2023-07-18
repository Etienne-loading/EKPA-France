class OrganismeController < ApplicationController
  before_action :set_organisme, only: [:show]
  def index
    @organismes = Organisme.all
  end

  def show
  end

  def new
    @organisme = Organisme.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_organisme
    @organisme = Organisme.find(params[:id])
  end

  def organisme_params
    params.require(:organisme).permit(:title, :description, :duree, :type, :code_rncp, :periode)
  end
end
