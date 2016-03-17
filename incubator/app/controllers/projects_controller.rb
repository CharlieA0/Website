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
    redirect_to action: "show", id: project.id
	end

  def update
    project = Project.find(params[:id])
    @project = project
    body = project_params
    puts body
    if !body.blank?
      project.update(body: params[:body])
    end
    #redirect_to action: "show", id: params[:id]
  end

	private
  def project_params
    params.require(:project).permit(:name, :body)
  end
end
