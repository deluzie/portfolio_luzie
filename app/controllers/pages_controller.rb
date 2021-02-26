class PagesController < ApplicationController
  def home
    @projects = Project.all
    @project = Project.find(Project.pluck(:id).sample)
  end

  def about
  end

  def legal_notice
  end
end
