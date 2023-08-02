class OrganismesController < ApplicationController
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
    @organisme = Organisme.new(organisme_params)
    if current_user.admin == true && @organisme.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
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
    params.require(:organisme).permit(:nom)
  end
end
