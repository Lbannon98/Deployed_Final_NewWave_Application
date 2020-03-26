class ApplicationMailer < ActionMailer::Base

  # Define from email
  default from: "newswaveinfo@gmail.com"
  layout 'mailer'
end