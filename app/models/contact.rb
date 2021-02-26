class Contact < MailForm::Base
  attribute :from_name, validate: true
  attribute :from_email, validate: /\A[^@\s]+@[^@\s]+\z/i
  attribute :subject, validate: true
  attribute :message
  attribute :nickname, captcha: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      subject: "My Contact Form",
      to: "your.email@your.domain.com",
      from: %("#{name}" <#{email}>)
    }
  end
end
