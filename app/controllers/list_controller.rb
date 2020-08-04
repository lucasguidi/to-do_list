class ListController < ApplicationController
  before_action :get_list, only: %i(show update destroy edit)

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
  end

  def edit
  end

  def update
    @list.update(list_params)

    redirect_to list_path(@list)
  end

  def show
  end

  private

  def get_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:title, :description, :private, :favorit, :done)
  end
end
