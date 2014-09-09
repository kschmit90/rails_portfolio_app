class ClassProjectsController < ApplicationController
  def index
    @class_projects = ClassProject.all
  end
  
  def show
    @class_project = ClassProject.find(params[:id])
  end
  
  def new
    @class_project = ClassProject.new
  end
  
  def create
    @class_project = ClassProject.new(params[:class_project])
    
    if @class_project.save
      redirect_to projects_index_path
    else
      render 'new'
    end
  end
  
  def edit
    @class_project = ClassProject.find(params[:id])
  end
  
  def update
    @class_project = ClassProject.find(params[:id])
    
    if @class_project.update_attributes(params[:class_project])
      redirect_to projects_index_path
    else
      render 'edit'
    end
  end
end
