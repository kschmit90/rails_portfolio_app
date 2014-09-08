class ClassProjectsController < ApplicationController
  def index
  end
  
  def new
    @class_project = ClassProject.new
  end
end
