class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @contact = Contact.new
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :to_email, :name, :subject, :message, :nickname)
  end
end
