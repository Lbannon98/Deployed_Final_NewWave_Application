class CommentMailer < ApplicationMailer

  def new_comment_email(editor, user, content)

    @editor = editor
    @user = user
    @content = content

    mail(to: @editor, subject:'Someone has commented on your Article!')

  end

end
