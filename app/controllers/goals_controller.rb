class GoalsController < ApplicationController
  def new
    @user = User.find params[:user_id]
    @goal = @user.goals.build
  end

  def create
    @goal = Goal.new goal_params
    if @goal.save
      flash[:success] = 'Created!'
      redirect_to @goal.user
    else
      render 'new'
    end
  end

  def edit
    @goal = Goal.find params[:id]
  end

  def update
    @goal = Goal.find params[:id]
    if @goal.update goal_params
      flash[:success] = 'Updated!'
      redirect_to @goal.user
    else
      render 'edit'
    end
  end

  private

  def goal_params
    params.require(:goal).permit(:name, :text, :user_id)
  end
end
