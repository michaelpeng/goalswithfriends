class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.where.not(list_me: false)
  end

  def show
    @user = User.find(params[:id])
  end

end
