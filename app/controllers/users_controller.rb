class UsersController < ApplicationController
  private

  def params_users
    params.require(:users).permit(:prenom, :nom)
  end
end
