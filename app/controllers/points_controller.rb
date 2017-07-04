class PointsController < ApplicationController

  before_action :authenticate_user!
  before_action :find_my_points, only: [:show, :index]

  def index
    @user = current_user
    @my_points = current_user.points
    @programs = Program.all


  end

  def new
    @user = current_user
    @my_point = Point.new
    @programs = Program.all

  end

  def create
    @user = current_user
    @my_point = Point.new(point_params)
    @programs = Program.all
    # @my_programs = Program.where(program_id = current_user.point_ids.program_id)
    # @program = program_id

    if @my_point.save
      redirect_to user_points_path
    else
      render :new
    end
  end

  def show
    @user = current_user
    @my_points = current_user.points
    @programs = Program.all

  end

  def edit
    @user = current_user
    @point = params[:id]
    @my_points = current_user.points
    @my_point = @my_points.where(id = @point)
    # if @point.update(point_params)
    #   redirect_to user_points_path
    # end

  end

private

def point_params
  params.require(:point).permit(:program_id, :user_id, :pointsNum)


end

def find_my_points

  @my_points = current_user.point_ids
end


end
