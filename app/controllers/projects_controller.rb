class ProjectsController < ApplicationController
  def index
    projects = Project.all
    render json: projects
  end

  def show 
    # project = Project.find_by(id: params[:id]) #:id
    # if project 
    #   # do this
    # else 
    #   render json: {errors: 'not found'}
    # end
    project = Project.find(params[:id])
    render json: project
  end
end
