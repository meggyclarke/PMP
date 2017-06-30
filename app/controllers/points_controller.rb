class PointsController < ApplicationController

  before_action :authenticate_user!
  before_action :find_my_points, only: [:show, :index]

  def index
    @user = current_user
    @my_points = current_user.point_ids

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
    @my_programs = Program.where(program_id = current_user.point_ids.program_id)

    if @my_point.save
      redirect_to user_points_path
    else
      render :new
    end
  end

  def show
    @user = current_user
    @my_points = current_user.point_ids
    @my_point = Point.where(user_id = current_user.id && point.id = current_user.point_id)
    @programs = Program.all
    @my_programs = Program.where(program_id = current_user.point_id.program_id)
  end

  def edit
    @user = current_user
    @my_point = Point.where(user_id = current_user.id && point.id = current_user.point_id)
    @my_programs = Program.where(program_id = current_user.point_id.program_id)
  end

private

def point_params
  params.require(:point).permit(:user_id, :program_id)
end

def find_my_points

  @my_points = current_user.point_ids
end


end
