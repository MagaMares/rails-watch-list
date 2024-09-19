class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def create
    @list = List.new(params[:list_params])
    @list.save
    redirect_to list_path(@list)
  end

private

def list_params
  params.require(:list).permit(:name)
end
end
