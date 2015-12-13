class TodosController < ApplicationController
  def index
    @todos=Todo.all
  end 

  def new
    @todo=Todo.new
  end
  
  def create
    if Todo.create(todo_params)
      redirect_to todos_path
    else
      render :new
    end
  end
  private
  def todo_params
    params.require(:todo).permit(:title)
  end
end
