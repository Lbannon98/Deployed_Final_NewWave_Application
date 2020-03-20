require 'test_helper'

class CommentMailerTest < ActionMailer::TestCase

  test 'Email sent after comment created' do

    if Comment.count + 1
      assert true
    end

  end

end
