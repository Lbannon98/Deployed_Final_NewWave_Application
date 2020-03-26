class CommentMailer < ApplicationMailer

  # Method which defines email to be sent upon comment being added
  # Parameters to be able to access data within the email
  def new_comment_email(editor, user, content)

    @editor = editor
    @user = user
    @content = content

    mail(to: @editor, subject:'Someone has commented on your Article!')

  end

end
