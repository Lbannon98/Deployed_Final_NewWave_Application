class CommentObserver < ActiveRecord::Observer

  def after_create(comment)

    @user = comment.user.email
    @editor = comment.article.editor.email
    @content = comment.content

    CommentMailer.new_comment_email(@editor, @user, @content).deliver_now

  end

end
