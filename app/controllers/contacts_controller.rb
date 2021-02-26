class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      redirect_to root_path, notice: 'Message sent successfully'
    else
      render :new, notice: 'Message sent successfully'
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
