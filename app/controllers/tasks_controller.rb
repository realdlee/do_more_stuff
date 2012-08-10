class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    warn "params[:task]:"
    warn params[:task]
    warn current_user.inspect
    @task = Task.build(params[:task])
    @task.user_id = current_user.id
    # @task[:due_date]=params[:due_date]
    if @task.save
      flash[:notice] = "Added new task."
      redirect_to tasks_path
    else
      render 'new'
    end

  end

  def show
     render 'new'
  end

  def update
  end
end
