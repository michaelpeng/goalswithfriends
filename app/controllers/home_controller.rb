class HomeController < ApplicationController

  def index
    listed_user = User.where(list_me:true)
    @user = listed_user.sample
  end

end
