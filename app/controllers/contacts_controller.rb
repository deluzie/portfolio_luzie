class ContactsController < ApplicationController
  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def new
    @contact = Contact.new
  end

  private

  def contact_params
    params.require(:contact).permit(:from_email, :to_email, :from_name, :subject, :message)
  end
end
