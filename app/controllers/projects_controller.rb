class ProjectsController < ApplicationController
  def index
    @first_project = Project.first
  end
end
