class UserMailer < ApplicationMailer

  # Method which defines email to be sent once user account is created
  # Takes parameter of user for accessing user data
  def welcome_email_for_user(user)
    @user = user
    mail(to: @user, subject: 'Welcome to NewsWave!')
  end

  # Method which defines email to be sent once editor account is created
  # Takes parameter of editor for accessing editor data
  def welcome_email_for_editor(editor)
    @editor = editor
    mail(to: @editor, subject: 'Welcome to NewsWave!')
  end

end
