class FormationsController < ApplicationController
  before_action :set_formation, only: [:show, :edit, :update]
  def index
    @formations = Formation.all
  end

  def show
  end

  def new
    @formation = Formation.new
  end

  def create
    @formation = Formation.new(formation_params)
    @organismes = Organisme.all
    @formation.user = current_user
    if current_user.admin == true && @formation.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @formation.update(formation_params)
    redirect_to catalogue_path(current_user)
  end

  def destroy
    @formation = Formation.find(params[:id])
    @formation.destroy
    redirect_to catalogue_path, status: :see_other
  end

  private

  def set_formation
    @formation = Formation.find(params[:id])
  end

  def formation_params
    params.require(:formation).permit(:title, :description, :duree, :type, :code_rncp, :periode, :user_id, :organisme_id, :photo)
  end
end
