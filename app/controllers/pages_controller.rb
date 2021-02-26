class PagesController < ApplicationController
  def home
    @projects = Project.all
  end

  def about
  end

  def legal_notice
  end
end
