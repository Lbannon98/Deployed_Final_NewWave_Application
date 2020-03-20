class UserMailer < ApplicationMailer

  def welcome_email_for_user(user)
    @user = user
    mail(to: @user, subject: 'Welcome to NewsWave!')
  end

  def welcome_email_for_editor(editor)
    @editor = editor
    mail(to: @editor, subject: 'Welcome to NewsWave!')
  end

end
