class CommentObserver < ActiveRecord::Observer

  # Observer method observers for creation of comment
  # Instance variables give access to the data from the comment
  # Call comment mailer with the variables as the parameters
  def after_create(comment)

    @user = comment.user.email
    @editor = comment.article.editor.email
    @content = comment.content

    CommentMailer.new_comment_email(@editor, @user, @content).deliver_now

  end

end
