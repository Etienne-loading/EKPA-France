class BlocController < ApplicationController
  before_action :set_bloc, only: [:show]
  
  def index
    @blocs = Bloc.all
  end

  def show
    @bloc = Bloc.find(params[:id])
  end

  def new
    @bloc = Bloc.new
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

  def set_bloc
    @bloc = Bloc.find(params[:id])
  end

  def bloc_params
    params.require(:bloc).permit(:title, :description, :duree, :type, :code_rncp, :periode)
  end
end
