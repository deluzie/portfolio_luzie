class ProjectsController < ApplicationController
  def index
    if params[:tag]
      @projects = Project.tagged_with(params[:tag])
    # if params[:query].present?
    #   sql_query = " \
    #     OR projects.year @@ :query"
    #   @projects = Project.joins(:taggings).where(sql_query, query: "%#{params[:query]}%")
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

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to projects_path
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:all_tags, :title, :description, :introduction, :year, :main_picture, primary_photos: [], secondary_photos: [])
  end
end
