class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :catalogue, :contact, :cpf, :ekpa ]
  before_action :set_formation, only: [:show, :edit, :update, :destroy]

  def home
    @formations = Formation.all
  end

  def catalogue
    @formations = Formation.all
  end

  def contact
    @contact = Contact.new
  end

  def cpf
  end

  def ekpa
  end
end
