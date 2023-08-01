class FormationsController < ApplicationController
  before_action :set_formation, only: [:show]
  def index
    @formations = Formation.all
  end

  def show
    @formation = Formation.find(params[:id])
  end

  def new
    @formation = Formation.new
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

  def set_formation
    @formation = Formation.find(params[:id])
  end

  def formation_params
    params.require(:formation).permit(:title, :description, :duree, :type, :code_rncp, :periode, :user_id, :organisme_id)
  end
end
