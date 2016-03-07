class ProjectsController < ApplicationController
  def index
		@projects = Project.order("started_at DESC")
  end

  def show
		@project = Project.find(params[:id])
  end
end
