class ProjectsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = " \
        projects.category @@ :query"
      @projects = Project.where(sql_query, query: "%#{params[:query]}%")
    else
      @projects = Project.order("year DESC").all
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :introduction, :category, :year, :main_picture, primary_photos: [], secondary_photos: [])
  end
end
