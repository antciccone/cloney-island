class ProjectsController < ApplicationController 
  
  def new 
    @project = Project.new          
  end 

  def show 
    @project = Project.find(params[:name]) 
  end 

  def create
    @project = Project.new(project_params)
    if @project.save 
      redirect_to project_path(@project) 
    else 
      redirect_to new_project_path 
    end 
  end 

  private 

  def project_params 
    params.require(:project).permit(:name, :description, :goal)
  end 
end 
