class ProjectController < ApplicationController
  def index
    @all_projects = Project.all
  end

  # GET /project/{#url_string} triggers the show method
  def show
    @project = Project.find_by_url_string(params[:url_string])
  end

  # Direct the user to the homepage.
  def homepage

  end
end
