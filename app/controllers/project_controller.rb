class ProjectController < ApplicationController
  def index
    @project = Project.all
    @firstProject = Project.first
  end

  # GET /project/{#id} triggers the show method 
  def show

  end
end
