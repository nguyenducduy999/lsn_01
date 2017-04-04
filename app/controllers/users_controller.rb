class UsersController < ApplicationController
  def show
    @user = User.find_by id: params[:id]
    unless @user
      flash[:danger] = t "user_not_found"
      render root_path
    end
    @supports = Supports::ProfileUser.new @user
  end
end
