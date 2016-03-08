class ProjectsController < ApplicationController
  def index
		@projects = Project.order("started_at DESC")
  end

  def show
		@project = Project.find(params[:id])
  end
	def create
		project = Project.create(project_params)
		project.update(started_at: Time.now)
	end

	private
  def project_params
    params.require(:project).permit(:name, :body)
  end
end
