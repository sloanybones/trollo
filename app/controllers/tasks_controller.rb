class TasksController < ApplicationController
  
  before_action :set_list, only: [:create,:update,:edit,:destroy, :new]
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end
  
  def create
    @task = @list.tasks.new(task_params)
    if @task.save
      redirect_to board_path(@list[:board_id])
    else
      render :new
    end
  end

  def edit
    @task = @list.tasks.find(params[:id])
  end

  def update
    @task = @list.tasks.find(params[:id])
    if @task.update(task_params)
      redirect_to board_path(@list[:board_id])
    else
      render :edit
    end
  end 

  def destroy
    @task = @list.tasks.find(params[:id])
    @task.destroy
    redirect_to board_path(@list[:board_id])
  end

  private
  
  def set_list
    @list= List.find(params[:list_id])
  end
  
  
  def task_params
    params.require(:task).permit(:body, :list_id)
  end
end
