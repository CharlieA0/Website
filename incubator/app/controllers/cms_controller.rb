class CmsController < ApplicationController
  def new
		@project = Project.new
  end

  def show
    @project = Project.find(params[:id])
  end

  def approve

  end

  def index
    @projects = Project.order("started_at DESC")
  end

end
