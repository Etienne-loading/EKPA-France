class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  before_action :set_formation, only: [:show, :edit, :update, :destroy]

  def home
    @formations = Formation.all
  end

  def catalogue
    @formations = Formation.all
  end

  def contact
  end
end
