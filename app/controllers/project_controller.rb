class ProjectController < ApplicationController
  def index
    @all_projects = Project.all
  end

  # GET /project/{#id} triggers the show method
  def show
    @project = Project.find_by_name(params[:url_string])
  end
end
