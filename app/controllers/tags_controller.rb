class TagsController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @tag = Tag.new
  end

  def show
    @tag = Tag.find(params[:id])
  end
end
