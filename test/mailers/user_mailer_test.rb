require 'test_helper'

class UserMailerTest < ActionMailer::TestCase

  test 'authenticated users get sent email' do
    sign_in users(:one)

    assert true
  end

end
