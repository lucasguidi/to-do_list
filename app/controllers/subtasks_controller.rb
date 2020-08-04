class SubtasksController < ApplicationController
  def index
    @subtasks = Subtask.all
  end

  def new
    @subtask = Subtask.new
  end

  def create
    @subtask = Subtask.new(subtask_params)
    if @subtask.save
      redirect_to subtask_path(@subtask)
    else
      render :new
    end
  end

  def destroy
  end

  def edit
  end

  def update
    @subtask.update(subtask_params)

    redirect_to subsubtask_path(@subtask)
  end

  def show
  end

  private

  def get_subtask
    @subtask = subtask.find(params[:id])
  end

  def subtask_params
    params.require(:subtask).permit(:title, :description, :private, :favorit, :done)
  end
end
