class Contactusmailer < ActionMailer::Base
  include ActionView::Helpers::TextHelper


  def send_mail(user)
    mail(
      :to => "thakur.dinkar@gmail.com",
      :from => %("#{user.name}" <#{user.email}>),
      :reply_to => user.email,
      :subject => "Website inquiry",
      :body => user.message,
      :html_body => simple_format(user.message)
    )
  end
end
